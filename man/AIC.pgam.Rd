\name{AIC.pgam}
\alias{AIC.pgam}
\title{AIC extraction}
\description{Method for approximate Akaike Information Criterion extraction.
}
\usage{
\method{AIC}{pgam}(object, k = 2, ...)
}
\arguments{
  \item{object}{object of class \code{pgam} holding the fitted model}
  \item{k}{default is 2 for AIC. If \eqn{k=\log\left(n\right)} then an approximation for BIC is obtained. Important to note that these are merely approximations.}
  \item{\dots}{further arguments passed to method}
}
\details{An approximate measure of parsimony of the Poisson-Gama Additive Models can be achieved by the expression
\deqn{AIC=\left(D\left(y;\hat\mu\right)+2gle\right)/\left(n-\tau\right)}
where \eqn{gle} is the number of degrees of freedom of the fitted model and \eqn{\tau} is the index of the first non-zero observation.
}
\value{The approximate AIC value of the fitted model.
}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Campos, E. L., De Leon, A. C. M. P., Fernandes, C. A. C. (2003) Modelo Poisson-Gama para Séries Temporais de Dados de Contagem - Teoria e Aplicações. 10a ESTE - Escola de Séries Temporais e Econometria

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Paramétrico: Uma Abordagem de Penalização por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Elétrica

Hastie, T. J., Tibshirani, R. J.(1990) Generalized Additive Models. Chapman and Hall, London
} 
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{deviance.pgam}}, \code{\link{logLik.pgam}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS")

AIC(m)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
