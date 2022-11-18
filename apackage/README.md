README
================
Justin
2022-11-18

\#package description This function deletes omitted observations and
keeps observations above a threshold. For example: you can use 0 as the
threshold and keep positive observations.

\#installation instructions

install.packages(“apackage”) Note: use devtools::install_github(…) to
install this package.

\#demonstrated usage

Example：x\<-c(100,100,100,100,-100,-100) y\<-c(100,100,100,100,100,100)
mydata\<-data.frame(x,y) cleanr(mydata,x,0)
