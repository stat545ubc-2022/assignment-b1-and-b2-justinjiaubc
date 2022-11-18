x<-c(100,100,100,100,-100,-100)
y<-c(100,100,100,100,100,100)
mydata<-data.frame(x,y)
x<-c(100,100,100,100)
y<-c(100,100,100,100)
mydata1<-data.frame(x,y)

test_that("cleanr() clean a dataset", {
  expect_equal(cleanr(mydata,x,0),mydata1)
})
