\name{deviance.pgam}
\alias{deviance.pgam}
\title{Deviance extraction}
\description{Method for total deviance value extraction.}
\usage{
\method{deviance}{pgam}(object, ...)
}
\arguments{
  \item{object}{object of class \code{pgam} holding the fitted model}
  \item{\dots}{further arguments passed to method}
}
\details{
See \code{\link{predict.pgam}} for further information on deviance extration in Poisson-Gamma models.
}
\value{The sum of deviance components.
}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Campos, E. L., De Leon, A. C. M. P., Fernandes, C. A. C. (2003) Modelo Poisson-Gama para Séries Temporais de Dados de Contagem - Teoria e Aplicações. 10a ESTE - Escola de Séries Temporais e Econometria

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Paramétrico: Uma Abordagem de Penalização por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Elétrica
} 
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.fit}}, \code{\link{pgam.likelihood}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS")

deviance(m)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
