close_form_sol <- function(input,output){
  x <- mean(input)
  y <- mean(output)
  mean_IO <- mean(input*output) 
  mean_sqr_input <- mean(input*input)
  numerator <- mean_IO - (x*y)
  denominator <- mean_sqr_input - (x*x)
  slope <- numerator/denominator
  intercept <- y - (slope*x)
  result <- c(intercept,slope)
  return(result)
}