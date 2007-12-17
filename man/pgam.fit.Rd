\name{pgam.fit}
\alias{pgam.fit}
\title{One-step ahead prediction and variance}
\description{
Estimate one-step ahead expectation and variance of \eqn{y_{t}} conditional on observed time series until the instant \eqn{t-1}.
}
\usage{
pgam.fit(w, y, eta, partial.resid)
}
\arguments{
  \item{w}{estimate of discount factor \eqn{\omega} of a Poisson-Gamma model}
  \item{y}{observed time series which is the response variable of the model}
  \item{eta}{semiparametric predictor}
  \item{partial.resid}{type of partial residuals.}
}
\details{
Partial residuals for semiparametric estimation is extracted. Those are regarded to the parametric partition fit of the model. Available types are \code{raw}, \code{pearson} and \code{deviance}. The type \code{raw} is prefered. Properties of other form of residuals not fully tested. Must be careful on choosing it.
See details in \code{\link{predict.pgam}} and \code{\link{residuals.pgam}}.
}
\value{
  \item{yhat}{vector of one-step ahead prediction}
  \item{resid }{vector partial residuals}
}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Harvey, A. C. (1990) Forecasting, structural time series models and the Kalman Filter. Cambridge, New York

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Parametrico: Uma Abordagem de Penalizacao por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Eletrica

Green, P. J., Silverman, B. W. (1994) Nonparametric Regression and Generalized Linear Models: a roughness penalty approach. Chapman and Hall, London

}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{residuals.pgam}}, \code{\link{predict.pgam}}}
	\keyword{internal}
 
