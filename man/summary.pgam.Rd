\name{summary.pgam}
\alias{summary.pgam}
\title{Summary output}
\description{Output of model information}
\usage{
\method{summary}{pgam}(object, smo.test = FALSE, ...)
}
\arguments{
\item{object}{object of class \code{pgam} holding the fitted model}
\item{smo.test}{Approximate significance test of smoothing terms. It can take long, so default is \code{FALSE}}
\item{\dots}{further arguments passed to method}
}
\details{Hypothesis tests of coefficients are based o \emph{t} distribution. Significance tests of smooth terms are approximate for model selection purpose only. Be very careful about the later.
}
\value{List containing all the information about the model fitted.
}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Junger, W. L. (2004) Semiparametric Poisson-Gamma models: a roughness penalty approach. MSc Dissertation. Rio de Janeiro, PUC-Rio, Department of Electrical Engineering. 

Green, P. J., Silverman, B. W. (1994) Nonparametric Regression and Generalized Linear Models: a roughness penalty approach. Chapman and Hall, London

Hastie, T. J., Tibshirani, R. J.(1990) Generalized Additive Models. Chapman and Hall, London

McCullagh, P., Nelder, J. A. (1989). Generalized Linear Models. Chapman and Hall, 2nd edition, London

Pierce, D. A., Schafer, D. W. (1986) Residuals in generalized linear models. Journal of the American Statistical Association, 81(396),977-986
} 
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{predict.pgam}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS")

summary(m)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
