\name{predict.pgam}
\alias{predict.pgam}
\title{Prediction}
\description{Prediction and forecasting of the fitted model.}
\usage{
\method{predict}{pgam}(object, forecast = FALSE, k = 1, x = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{object}{object of class \code{pgam} holding the fitted model}
  \item{forecast}{if \code{TRUE} the function tries to forecast}
  \item{k}{steps for forecasting}
  \item{x}{covariate values for forecasting if the model has covariates. Must have the \eqn{k} rows and \eqn{p} columns}
  \item{\dots}{further arguments passed to method}
}
\details{It estimates predicted values, their variances, deviance components, generalized Pearson statistics components, local level, smoothed prediction and forecast.

Considering a Poisson process and a gamma priori, the predictive distribution of the model is negative binomial with parameters \eqn{a_{t|t-1}} and \eqn{b_{t|t-1}}. So, the conditional mean and variance are given by
\deqn{E\left(y_{t}|Y_{t-1}\right)=a_{t|t-1}/b_{t|t-1}}
and
\deqn{Var\left(y_{t}|Y_{t-1}\right)=a_{t|t-1}\left(1+b_{t|t-1}\right)/b_{t|t-1}^{2}}

Deviance components are estimated as follow
\deqn{D\left(y;\hat\mu\right)=2\sum_{t=\tau+1}^{n}{a_{t|t-1}\log \left(\frac{a_{t|t-1}}{y_{t}b_{t|t-1}}\right)-\left(a_{t|t-1}+y_{t}\right)\log \frac{\left(y_{t}+a_{t|t-1}\right)}{\left(1+b_{t|t-1}\right)y_{t}}}}

Generalized Pearson statistics has the form
\deqn{X^{2}=\sum_{t=\tau+1}^{n}\frac{\left(y_{t}b_{t|t-1}-a_{t|t-1}\right)^{2}} {a_{t|t-1}\left(1+b_{t|t-1}\right)}}

Approximate scale parameter is given by the expression
\deqn{\hat\phi=frac{X^{2}}{edf}}
where \eqn{edf} is the number o degrees of reedom of the fitted model.
}
\value{List with those described in \bold{Details}
}
\references{
Green, P. J., Silverman, B. W. (1994) Nonparametric Regression and Generalized Linear Models: a roughness penalty approach. Chapman and Hall, London

Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Campos, E. L., De Leon, A. C. M. P., Fernandes, C. A. C. (2003) Modelo Poisson-Gama para Séries Temporais de Dados de Contagem - Teoria e Aplicações. 10a ESTE - Escola de Séries Temporais e Econometria

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Paramétrico: Uma Abordagem de Penalização por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Elétrica

Harvey, A. C. (1990) Forecasting, structural time series models and the Kalman Filter. Cambridge, New York

Hastie, T. J., Tibshirani, R. J.(1990) Generalized Additive Models. Chapman and Hall, London

McCullagh, P., Nelder, J. A. (1989). Generalized Linear Models. Chapman and Hall, 2nd edition, London
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{residuals.pgam}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS")

p <- predict(m)$yhat
plot(ITRESP5)
lines(p)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
