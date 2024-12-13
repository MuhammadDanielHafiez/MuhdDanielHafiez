replace_missing_values<-function(dataset){
  for(col_name in colnames(dataset)){
    if(is.numeric(dataset[[col_name]])){
      col_median<-median(dataset[[col_name]],na.rm=TRUE)
      dataset[[col_name]][is.na(dataset[[col_name]])]<-col_median
    }
  }
  return(dataset)
}

data1 <- data.frame(Name = c("Ali", "Abu", "Atan", "Bagas"), Age = c( NA, 10, 11, 12), Mark = c(75, NA, 85, NA))
data2 <- replace_missing_values(data1)
print(data2)
