\name{coef.pgam}
\alias{coef.pgam}
\title{Coefficients extraction}
\description{Method for parametric coefficients extraction.
}
\usage{
\method{coef}{pgam}(object, ...)
}
\arguments{
  \item{object}{object of class \code{pgam} holding the fitted model}
  \item{\dots}{further arguments passed to method}
}
\details{
This function only retrieves the estimated coefficients from the model object returned by \code{pgam}.
}
\value{Vector of coefficients estimates of the model fitted.
}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Parametrico: Uma Abordagem de Penalizacao por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Eletrica
} 
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.fit}}, \code{\link{predict.pgam}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS")

coef(m)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
