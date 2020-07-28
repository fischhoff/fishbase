
#T: table of all results for all fish
#DF, dataframe of HADDOCK scores
#exclude: list of fields to exclude
#threshold_frac: threshold_frac for coverage for a field to include it
#table_name: name of table
#part: "part" or "all

#required packages: dplyr
process_table <- function(T, DF, exclude, threshold_frac, table_name, part){
  #required packages: dplyr
  load("sum_or_mean.Rdata")
  load("keep_real_binary.Rdata")
  names = names(T)
  inds_rm = NULL
  output_list = c("T_b_multiple_sum","T_b_single_sum", "T_n_sum", "T_f_sum")
  dim_ctr = rep(0, 4)
  
  for (a in 1:length(non_biological)){
    inds_rm = c(inds_rm, str_which(names, non_biological[a]))
  }
  rm = names[inds_rm]
  print("removed fields")
  print(rm)
  keep = setdiff(names, names[inds_rm])
  T = T[,keep]
  print("kept fields")
  print(names(T))
  T[sapply(T, is.character)] <- lapply(T[sapply(T, is.character)], 
                                       as.factor)
  
  if (part == "part"){
    T = subset(T, Species %in% DF$Species)
  }

  ct <- T %>% group_by(Species) %>%
    summarize(record_count_species = n())
  
  names(ct)[names(ct)=="record_count_species"]=paste0(names(ct)[names(ct)=="record_count_species"],"_",table_name)
  DF_test = merge(DF, ct, by = "Species")
  DF = DF_test

  names = names(T)
  adult_types = c(NA, "juv./adults", "recruits/juv.", "not given", "adults")
  life_stage = c("LifeStage", "PredatorStage")
  #remove juvenile data
  ind = which(names %in% life_stage)
  which_life_stage = life_stage[which(life_stage == names[ind])]
  
  if (length(ind)==1){#if there is a life stage field
    adult_row_inds = NULL
    for (b in 1:length(adult_types)){
      add = which(T[,ind] == adult_types[b])
      adult_row_inds = c(adult_row_inds,add)     
    }
    T_adult = T[adult_row_inds,] 
    
    larvae_row_inds =which(T[,ind] == "larvae")
    
    T_not_adult = T[larvae_row_inds,]
    #make everything NA
    sp_ind = which(names(T_not_adult)=="Species")
    T_not_adult[,-sp_ind]=NA
    
    test = setdiff(seq(from = 1, to = dim(T)[1]), c(adult_row_inds, larvae_row_inds))
    T_more = T[test,]
    
    T = rbind(T_adult, T_not_adult)
    T = rbind(T, T_more)
    print(unique(T[,ind]))
    T = T[,-ind]#remove the field, no longer needed
  }

  out_all = data.frame(row.names = seq(1, length(unique(T$Species))), Species = unique(T$Species))#out for all the types of data
  
  T_f <- T %>%  select_if(is.factor)
  ind <- names(T_f)[sapply(T_f, is.factor)] 
  for (i in ind){
    T_f[[i]] <- tolower(as.character(T_f[[i]]))
  }
  #
  ##find fields that are absent/present
  names = names(T_f)
  present_absent = rep(0, length(names))
  no_variation_names = NULL
  for (a in 1:length(names)){
    unique_vals = unique(T_f[,names[a]])
    unique_vals = unique_vals[!is.na(unique_vals)]
    # print(names[a])
    # print("unique vals")
    # print(length(unique_vals))
    if (length(unique_vals)>0){#if there are non-NA values
      check = (unique_vals[1]=="absent" & unique_vals[2] =="present")
      # print(check)
      if (check == TRUE){
        # print(a)
        present_absent[a]=1
        one_zero = rep(NA, dim(T_f)[1])
        inds_present = which(T_f[,names[a]]=="present")
        inds_absent = which(T_f[,names[a]]=="absent")
        one_zero[inds_present]=1
        one_zero[inds_absent]=0
        T_f[,names[a]]=one_zero
      }#end check
    }#end if unique vals okay
    else{
      no_variation_names = c(no_variation_names, names[a])
    }
  }
  
  keep = setdiff(names(T_f),no_variation_names)#remove variables with no variation
  T_f = T_f[,keep]
  
  T_n <- T %>%  select_if(is.numeric)
  T_n$Species <- T$Species#
  
  ##find fields that are either -1 or 0, that seems to be binary fields
  names = names(T_n)
  binary = NULL
  names_binary = NULL
  
  for (a in 1:length(names)){
    vals = unique(T_n[,names[a]])
    vals = vals[!is.na(vals)]
    if (length(which(vals==0)) + length(which(vals == -1)) == 2){
      binary = c(binary, names[a])
      #change to 1 and 0
      inds0 = which(T_n[,names[a]]==0)
      T_n[inds0,names[a]]=0
      inds1 = which(T_n[,names[a]]==-1)
      T_n[inds1,names[a]]=1
    }
  }
  if (length(binary)>0){
    
    #for binary fields, find out how many unique values there are across species
    T_b = T_n[, binary]
    T_b$Species = T_n$Species#add back species names
    T_b_sum <- T_b %>% group_by(Species) %>%
      summarize_all(n_distinct, na.rm = TRUE)
    
    #find fields that have more than one unique entry for a species
    names = names(T_b_sum)
    names = setdiff(names, "Species")
    names_unique_ct = rep(NA, length(names))
    for (a in 1:length(names)){
      names_unique_ct[a]= max(T_b_sum[,names[a]])
    }
    # names_single = NULL
    names_single = names[names_unique_ct==1]
    if (length(names_single)>0){
      names_binary = c(names_binary, names_single)
    }
    
    if (length(names_single)>0){
      T_b_single = T_b[,c("Species", names_single)]
      T_b_single_sum = keep_real_binary(T_b_single)#get just one record
      ind = which(output_list == "T_b_single_sum")
      dim_ctr[ind]=1
      sp_ind = which(names(T_b_single_sum)=="Species")
      out_all = cbind(out_all, T_b_single_sum[,-sp_ind])
      print("T_b_single_sum, Species field count")
      print(str_which(names(out_all), "Species"))
    }
    # names_multiple = NULL
    names_multiple = names[names_unique_ct>1]
    if (length(names_multiple)>0){
      names_binary = c(names_binary, names_multiple)
    }
    if (length(names_multiple)>0){
      T_b_multiple = T_b[,c("Species", names_multiple)]
      sp_ind = which(names(T_b_multiple)=="Species")
      dmy <- dummyVars(" ~ .", data = T_b_multiple[,-sp_ind])
      T_b_multiple <- data.frame(predict(dmy, newdata = T_b_multiple[,-sp_ind]))#multiple rows for some species
      T_b_multiple$Species = T_b$Species
      ##take colSums here
      T_b_multiple_sum = sum_or_mean(T_b_multiple, "sum")
      ind = which(output_list == "T_b_multiple_sum")
      dim_ctr[ind]=1
      sp_ind = which(names(T_b_multiple_sum)=="Species")
      out_all = cbind(out_all, T_b_multiple_sum[,-sp_ind])
      print("T_b_multiple_sum, Species field count")
      print(str_which(names(out_all), "Species"))
    }
  }#end binary
  names_numeric_non_binary = NULL
  if (length(names_binary)>0){
    names_numeric_non_binary = setdiff(names(T_n), names_binary)
  } else {
    names_numeric_non_binary = names(T_n)
  }
  if (length(names_numeric_non_binary)>1){
    T_n = T_n[,names_numeric_non_binary]
    T_n_sum = sum_or_mean(T_n, "mean")  
    ind = which(output_list == "T_n_sum")
    dim_ctr[ind]=1
    
    if (dim(T_n_sum)[2]==2){#if there's only one variable then cbind will add vector and make up a weird column name
      out_all = cbind(out_all, T_n_sum)
      rm = "Species"
      inds_rm = which(names(out_all)=="Species")
      inds_rm = inds_rm[1]
      out_all = out_all[,-inds_rm]
    } else {
      sp_ind = which(names(T_n_sum)=="Species")
      out_all = cbind(out_all, T_n_sum[,-sp_ind])
    }

    
    print("T_n_sum, Species field count")
    print(str_which(names(out_all), "Species"))
    
  }
  print("finished T_n")  
  #categorical data
  ##there might not be any categorical data
  if (dim(T_f)[2]>1){  #if there's at least one field other than species
    # dummify the data
    
    Species = T_f$Species#added this
    sp_ind = which(names(T_f)=="Species")
    
    fields = names(T_f)[-sp_ind]
    fields_keep = NULL
    for (a in 1:length(fields)){
      #get all the values
      vals = T_f[, fields[a]]
      vals = vals[!is.na(vals)]#remove nas
      length_unique = length(unique(vals))
      if (length_unique > 1){#if there are at least two values
        fields_keep = c(fields_keep, fields[a])
      }
    }#end going through fields
    T_f = T_f[,c(fields_keep, "Species")]
    sp_ind = which(names(T_f)=="Species")
    dmy <- dummyVars(" ~ .", data = T_f[,-sp_ind])
    
    T_f <- data.frame(predict(dmy, newdata = T_f))#multiple rows for some species
    # T_f= factor(T_f)#change to factor
    T_f$Species = Species
    ##take colSums here
    T_f_sum = sum_or_mean(T_f, "sum")
    ind = which(output_list == "T_f_sum")
    dim_ctr[ind]=1
    sp_ind = which(names(T_f_sum)=="Species")
    T_f_sum[,-sp_ind] <- lapply(T_f_sum[,-sp_ind], factor)
    out_all = cbind(out_all, T_f_sum[,-sp_ind])
    print("T_f_sum, Species field count")
    print(str_which(names(out_all), "Species"))
  }#end if for whether there's categorical data
  field_inds = which(names(out_all) != "Species")
  
  names(out_all)[field_inds]= paste0(names(out_all[field_inds]),"_", table_name)
  
  df = out_all
  name_ct = length(names(df))
  row_ct = dim(df)[1]
  non_na_frac = rep(NA, name_ct)
  for (a in 1:name_ct){
    non_na_frac[a]= length(which(!is.na(df[,a])))/ row_ct  
  }
  ok_cols = which(non_na_frac > threshold_frac)
  rm_cols = which(non_na_frac < threshold_frac)
  print("remove due to lack of coverage")
  print(names(df)[rm_cols])
  df = df[,ok_cols]
  inds = NULL
  inds = c(dim(DF)[2])#take just the last column for number of rows for the species in this table
  inds = c(inds, which(names(DF)=="Species"))
  DF_ct = DF[,inds]
  str_which(names(df), "Species")
  df = merge(df, DF_ct)
  out_all = df
  out_all
  # 
}
save(process_table, file = "process_table.Rdata")