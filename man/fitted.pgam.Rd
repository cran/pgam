\name{fitted.pgam}
\alias{fitted.pgam}
\title{Fitted values extraction}
\description{
Method for fitted values extraction.
}
\usage{
\method{fitted}{pgam}(object, ...)
}
\arguments{
  \item{object}{object of class \code{pgam} holding the fitted model}
  \item{\dots}{further arguments passed to method}
}
\details{
Actually, the fitted values are worked out by the function \code{predict.pgam}. Thus, this method is supposed to turn fitted values extraction easier. See \code{\link{predict.pgam}} for details on one-step ahead prediction.
}
\value{Vector of predicted values of the model fitted.
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

f <- fitted(m)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
