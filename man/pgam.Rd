\name{pgam}
\alias{pgam}
\title{Poisson-Gamma Additive Models}
\description{Fit Poisson-Gamma Additive Models using the roughness penalty approach
}
\usage{
pgam(formula, dataset, omega = 0.8, beta = 0.01, offset = 1, digits = getOption("digits"),
maxit = 100, eps = 1e-06, control = list(trace = 10, REPORT = 10, maxit = 100, abstol = 1e-04,
reltol = 0.001, factr = 1e+07, pgtol = 0), optim.method = "BFGS", partial.resid = "response",
smoother = "spline", bkf.eps = 0.001, bkf.maxit = 100, numerical.se = TRUE, verbose = TRUE)
}
\arguments{
  \item{formula}{a model formula. See \code{\link{pgam.parser}} for details}
  \item{dataset}{a data set in the environment search path}
  \item{omega}{initial value for the discount factor}
  \item{beta}{vector of initial values for covariates coefficients. If a sigle value is supplied it is replicated to fill in the whole vector}
  \item{offset}{default is \eqn{1}. Other value can be supplied here}
  \item{digits}{number of decimal places for printing information out}
  \item{maxit}{convergence control iterations}
  \item{eps}{convergence control criterion}
  \item{control}{convergence control of \code{\link{optim}}. See its help for details}
  \item{optim.method}{optimization method for \code{\link{optim}}. See its help for details}
  \item{partial.resid}{type of partial residual to be used if semiparametric fitting. See \code{\link{residuals.pgam}} for details}
  \item{smoother}{smoother to be used in backfitting. See \code{\link{pgam.smooth}} for details}
  \item{bkf.eps}{convergence control criterion for the backfitting algorithm}
  \item{bkf.maxit}{convergence control iterations for the backfitting algorithm}
  \item{numerical.se}{if \code{TRUE} numerical standard error of parameters are returned, else analytical ones are returned}
  \item{verbose}{if \code{TRUE} information during estimation process is printed out}
}
\details{There are a lot of details to be written. It will be soon enough.

Specific information can be obtained on functions help.

This algorithm fits fully parametric Poisson-Gamma model also.
}
\value{List containing an object of class \code{pgam}.
}
\references{
Junger, W. L. (2004) Modelo Poisson-Gama Semi-Paramétrico: Uma Abordagem de Penalização por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Elétrica

Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Campos, E. L., De Leon, A. C. M. P., Fernandes, C. A. C. (2003) Modelo Poisson-Gama para Séries Temporais de Dados de Contagem - Teoria e Aplicações. 10a ESTE - Escola de Séries Temporais e Econometria

Green, P. J., Silverman, B. W. (1994) Nonparametric Regression and Generalized Linear Models: a roughness penalty approach. Chapman and Hall, London
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\seealso{\code{\link{predict.pgam}}, \code{\link{pgam.parser}}, \code{\link{residuals.pgam}}, \code{\link{backfitting}}}
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
