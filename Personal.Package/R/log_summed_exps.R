
#' Log sum of exponentials

#' @param x A vector of numeric values

#' @return Log of the summation of the exponentials of the numeric values stored in x

#' @examples
#'
#' log_summed_exps(x = 1:2000)

#' @export
log_summed_exps <- function(x = NULL){

  # Basic checks
  if(is.null(x) | is.character(x)){
    output <- "x must be numeric"
  }else{

  # Calculation
    x <- c(x)
    x.ordered <- x[order(x)]
    n <- length(x)

    if(n>=3){
      output <- x.ordered[n] + log(1+sum( exp( x.ordered[1:(n-1)] - x.ordered[n] ) ) )
    }else{
      output <- log( sum( exp(x) ) )
    }
  }

  # Return the results
  return(output)
  }
