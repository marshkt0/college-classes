
# start with advent2002 ; easter 2002 not available

url <- "http://registrar.sewanee.edu/schedule/export.csv?semester=Advent+Semester+2002&college=College+of+Arts+and+Sciences" ;
write.csv( read.csv(url,header=T), "csvs/advent02.csv", quote=F, row.names=F ) ;

for(i in 3:9){
  url <- paste0("http://registrar.sewanee.edu/schedule/export.csv?semester=Easter+Semester+200",i,"&college=College+of+Arts+and+Sciences",sep="");
  fname <- paste0("csvs/easter0",i,".csv",sep="");
  write.csv( read.csv(url,header=T),fname, quote=F, row.names=F ) ;
  url <- paste0("http://registrar.sewanee.edu/schedule/export.csv?semester=Advent+Semester+200",i,"&college=College+of+Arts+and+Sciences",sep="");
  fname <- paste0("csvs/advent0",i,".csv",sep="");
  write.csv( read.csv(url,header=T),fname, quote=F, row.names=F ) ;
}

for(i in 10:16){
  url <- paste0("http://registrar.sewanee.edu/schedule/export.csv?semester=Easter+Semester+20",i,"&college=College+of+Arts+and+Sciences",sep="");
  fname <- paste0("csvs/easter",i,".csv",sep="");
  write.csv( read.csv(url,header=T),fname, quote=F, row.names=F ) ;  
  url <- paste0("http://registrar.sewanee.edu/schedule/export.csv?semester=Advent+Semester+20",i,"&college=College+of+Arts+and+Sciences",sep="");
  fname <- paste0("csvs/advent",i,".csv",sep="");
  write.csv( read.csv(url,header=T),fname, quote=F, row.names=F ) ;
}

# stop with easter 2017 ; advent 2017 not yet available

url <- "http://registrar.sewanee.edu/schedule/export.csv?semester=Easter+Semester+2017&college=College+of+Arts+and+Sciences" ;
write.csv( read.csv(url,header=T), "csvs/easter17.csv", quote=F, row.names=F ) ;
