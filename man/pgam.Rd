\name{pgam}
\alias{pgam}
\title{Poisson-Gamma Additive Models}
\description{Fit Poisson-Gamma Additive Models using the roughness penalty approach
}
\usage{
pgam(formula, dataset, omega = 0.8, beta = 0.1, offset = 1, digits = getOption("digits"),
na.action="na.exclude", maxit = 100, eps = 1e-06, lfn.scale=1, control = list(), 
optim.method = "L-BFGS-B", bkf.eps = 0.001, bkf.maxit = 100, se.estimation = "numerical", 
verbose = TRUE)
}
\arguments{
  \item{formula}{a model formula. See \code{\link{formparser}} for details}
  \item{dataset}{a data set in the environment search path. Missing data is temporarily not handled}
  \item{omega}{initial value for the discount factor}
  \item{beta}{vector of initial values for covariates coefficients. If a sigle value is supplied it is replicated to fill in the whole vector}
  \item{offset}{default is \eqn{1}. Other value can be supplied here}
  \item{digits}{number of decimal places for printing information out}
  \item{na.action}{action to be taken if missing values are found. Default is \code{"na.exclude"} and residuals and predictions are padded to fit the length of the data. If \code{"na.fail"} then the process will stop if missing values are found. If \code{"na.omit"} the process will continue without padding though. If \code{"na.pass"} the process will stop due to errors}
  \item{maxit}{convergence control iterations}
  \item{eps}{convergence control criterion}
  \item{lfn.scale}{scales the likelihood function and is passed to \code{control} in \code{\link{optim}}. Value must be positive to ensure maximization}
  \item{control}{convergence control of \code{\link{optim}}. See its help for details}
  \item{optim.method}{optimization method passed to \code{\link{optim}}. Different methods can lead to different results, so the user must attempt to the trade off between speed and robustness. For example, \code{BFGS} is faster but sensitive to starting values and \code{L-BFGS-B} is more robust but slower. See its help for details.}
%  \item{partial.resid}{type of partial residual to be used if semiparametric fitting. See \code{\link{residuals.pgam}} for details}
%  \item{smoother}{smoother to be used in backfitting. See \code{\link{bkfsmooth}} for details}
  \item{bkf.eps}{convergence control criterion for the backfitting algorithm}
  \item{bkf.maxit}{convergence control iterations for the backfitting algorithm}
  \item{se.estimation}{if \code{numerical} numerical standard error of parameters are returned. If \code{analytical} then analytical extraction of the standard errors is performed. By setting it to \code{none} standard error estimation is avoided}
  \item{verbose}{if \code{TRUE} information during estimation process is printed out}
}
\details{
The formula is parsed by \code{\link{formparser}} in order to extract all the information necessary for model fit. Split the model into two parts regarding the parametric nature of the model.
A model can be specified as following:
\deqn{Y~f\left(sf_{r}\right)+V1+V2+V3+g\left(V4,df_{4}\right)+g\left(V5,df_{5}\right)}
where \eqn{sf_{r}} is a seasonal factor with period \eqn{r} and \eqn{df_{i}} is the degree of freedom of the smoother of the \emph{i}-th covariate. Actually, two new formulae will be created:
\deqn{~sf_{1}+\dots+sf_{r}+V1+V2+V3}
and
\deqn{~V4+V5}
These two formulae will be used to build the necessary datasets for model estimation. \emph{Dummy} variables reproducing the seasonal factors will be created also.

Models without explanatory variables must be specified as in the following formula
\deqn{Y~NULL}

There are a lot of details to be written. It will be very soon.

Specific information can be obtained on functions help.

This algorithm fits fully parametric Poisson-Gamma model also.
}
\value{List containing an object of class \code{pgam}.
}
\references{
Junger, W. L. (2004) Modelo Poisson-Gama Semi-Parametrico: Uma Abordagem de Penalizacao por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Eletrica

Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Green, P. J., Silverman, B. W. (1994) Nonparametric Regression and Generalized Linear Models: a roughness penalty approach. Chapman and Hall, London
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\seealso{\code{\link{predict.pgam}}, \code{\link{formparser}}, \code{\link{residuals.pgam}}, \code{\link{backfitting}}}
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
 
