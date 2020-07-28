sum_or_mean <- function(df, fun_to_apply){
  df$Species = as.character(df$Species)
  out = NULL
  species = unique(df$Species)
  wc_2 = NULL
  tmp = NULL
  # for (a in 1:2){
  for (a in 1:length(species)){
    # print(a)
    ind = which(df$Species == species[a])
    tmp = df[ind,]
    tmp<-data.frame(tmp)
    # print(tmp)
    names = names(tmp)
    sp_ind = which(names(tmp)=="Species")
    names = names(tmp)[-sp_ind]
    col_names <- names      # keep track of original column names, minus species
    # wc_2 = tmp
    if (fun_to_apply == "sum"){
      wc_2 <- colSums(tmp[,-sp_ind])           # compute the sum
      wc_2 = data.frame(as.list(wc_2))
      wc_2 <- wc_2 %>% mutate_if(is.numeric, ~1 * (. != 0))
    } 
    if (fun_to_apply == "mean"){
      if (dim(tmp)[2]==2){
        wc_2 = mean(tmp[,-sp_ind],na.rm=TRUE)
        wc_2 = data.frame(as.list(wc_2))
        names(wc_2) = col_names
        wc_2 = cbind(wc_2, Species = species[a])
      } else{
        wc_2 <- colMeans(tmp[,-sp_ind], na.rm = TRUE)           # compute the means
        wc_2 = data.frame(as.list(wc_2))
      }
    }
    # print(wc_2)
    wc_2$Species = as.character(suppressWarnings(species[a]))
    # print(wc_2)
    out = rbind(out, wc_2)
  } 
  out
}#end function
save(sum_or_mean, file = "sum_or_mean.Rdata")
