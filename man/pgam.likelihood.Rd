\name{pgam.likelihood}
\alias{pgam.likelihood}
\title{Likelihood function to be maximized}
\description{
This is the log-likelihood function that is passed to \code{optim} for likelihood maximization.
}
\usage{
pgam.likelihood(par, y, x, offset, fperiod, env = parent.frame())
}
\arguments{
  \item{par}{vector of parameters to be optimized}
  \item{y}{observed time series which is the response variable of the model}
  \item{x}{observed explanatory variables for parametric fit}
  \item{offset}{model offset. Just like in GLM}
  \item{fperiod}{vector of seasonal factors to be passed to \code{pgam.par2psi}}
  \item{env}{the caller environment for log-likelihood value to be stored}
}
\details{
Log-likelihood function of hyperparameters \eqn{\omega} and \eqn{\beta} is given by
\deqn{\log L\left(\omega,\beta\right)=\sum_{t=\tau+1}^{n}{\log \Gamma\left(a_{t|t-1}+y_{t}\right)-\log y_{t}!-\log \Gamma\left(a_{t|t-1}\right)+a_{t|t-1}\log b_{t|t-1}-\left(a_{t|t-1}+y_{t}\right)\log \left(1+b_{t|t-1}\right)}}
where \eqn{a_{t|t-1}} and \eqn{b_{t|t-1}} are estimated as it is shown in \code{\link{pgam.filter}}.
}
\value{
List containing log-likelihood value, optimum linear predictor and the gamma parameters vectors.}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Harvey, A. C. (1990) Forecasting, structural time series models and the Kalman Filter. Cambridge, New York

Junger, W. L. (2004) Semiparametric Poisson-Gamma models: a roughness penalty approach. MSc Dissertation. Rio de Janeiro, PUC-Rio, Department of Electrical Engineering. 
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.filter}}, \code{\link{pgam.fit}}}
	\keyword{internal}
