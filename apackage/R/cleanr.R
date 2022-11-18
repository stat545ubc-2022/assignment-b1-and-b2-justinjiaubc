#' Basic data cleaning
#'
#' @param data the dataset to be cleaned
#' @param x the numeric vector to be cleaned
#' @param n the threshold used to clean data
#'
#' @return returns a cleaned dataset
#' @export
#' @importFrom magrittr %>%
#' @examples
#' x<-c(100,100,100,100,-100,-100)
#' y<-c(100,100,100,100,100,100)
#' mydata<-data.frame(x,y)
#' cleanr(mydata,x,0)
#'
cleanr<-function(data,x,n){
  stopifnot(is.data.frame(data))
  if(!is.numeric(x)) {
    stop('this function only works for numeric input!\n',
         'You have provided an object of class: ', class(x)[1])
  }
  y<-data %>%
    dplyr::filter(x>n) %>%
    tidyr::drop_na()
  return(y)
}
