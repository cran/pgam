\name{print.summary.pgam}
\alias{print.summary.pgam}
\title{Summary output}
\description{Print output of model information}
\usage{
\method{print.summary}{pgam}(x, digits, ...)
}
\arguments{
  \item{x}{object of class \code{summary.pgam} holding the fitted model information}
  \item{digits}{number of decimal places for output}
  \item{\dots}{further arguments passed to method}
}
\details{This function actually only prints out the information. 
}
\value{No value is returned.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{predict.pgam}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS",partial.resid="response")

summary(m)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
