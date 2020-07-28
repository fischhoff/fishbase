keep_real_binary = function(df){
  out = NULL
  species = unique(df$Species)
  names_fields = setdiff(names(df), "Species")
  for (a in 1:length(species)){
    tmp = subset(df, Species == species[a])
    if (dim(tmp)[1]==1){
      out = rbind(out, tmp)
    } else {
      for (b in 1:length(names_fields)){
        # print(a)
        default_val = NA
        vals = tmp[,names_fields[b]]
        vals = vals[!is.na(vals)]
        if (length(vals)==1){
          default_val = vals[1]
        }
        tmp[,names_fields[b]]=default_val
      }#end going through fields
      tmp = unique(tmp)
      # print(dim(tmp)[1])
      out = rbind(out, tmp)
    }#end else
  }#end for loop
  out
}#end function
save(keep_real_binary, file = "keep_real_binary.Rdata")