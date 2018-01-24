\name{logLik.pgam}
\alias{logLik.pgam}
\title{Loglik extraction}
\description{Method for loglik value extraction.
}
\usage{
\method{logLik}{pgam}(object, ...)
}
\arguments{
  \item{object}{object of class \code{pgam} holding the fitted model}
  \item{\dots}{further arguments passed to method}
}
\details{
See \code{\link{pgam.likelihood}} for more information on log-likelihood evaluation in Poisson-Gamma models.
}
\value{The maximum value achieved by the likelihood optimization process.
}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Junger, W. L. (2004) Semiparametric Poisson-Gamma models: a roughness penalty approach. MSc Dissertation. Rio de Janeiro, PUC-Rio, Department of Electrical Engineering. 
} 
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.fit}}, \code{\link{pgam.likelihood}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS")

logLik(m)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
