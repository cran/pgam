\name{pgam.filter}
\alias{pgam.filter}
\title{Estimation of the conditional distributions parameters of the level}
\description{
The priori and posteriori conditional distributions of the level is gamma and their parameters are estimated through this recursive filter. See \bold{Details} for a thorough description.
}
\usage{
pgam.filter(w, y, eta)
}
\arguments{
  \item{w}{running estimate of discount factor \eqn{\omega} of a Poisson-Gamma model}
  \item{y}{\eqn{n} length vector of the time series observations}
  \item{eta}{full linear or semiparametric predictor. Linear predictor is a trivial case of semiparameric model}
}
\details{
Consider \eqn{Y_{t-1}} a vector of observed values of a Poisson process untill the instant \eqn{t-1}. Conditional on that, \eqn{\mu_{t}} has gamma distribution with parameters given by
\deqn{a_{t|t-1}=\omega a_{t-1}}
\deqn{b_{t|t-1}=\omega b_{t-1}\exp\left(-\eta_{t}\right)}
Once \eqn{y_{t}} is known, the posteriori distribution of \eqn{\mu_{t}|Y_{t}} is also gamma with parameters given by
\deqn{a_{t}=\omega a_{t-1}+y_{t}}
\deqn{b_{t}=\omega b_{t-1}+\exp\left(\eta_{t}\right)}
with \eqn{t=\tau,\ldots,n}, where \eqn{\tau} is the index of the first non-zero observation of \eqn{y}.

Diffuse initialization of the filter is applied by setting \eqn{a_{0}=0} and \eqn{b_{0}=0}. A proper distribution of \eqn{\mu_{t}} is obtained at \eqn{t=\tau}, where \eqn{\tau} is the fisrt non-zero observation of the time series.
}
\value{A list containing the time varying parmeters of the priori and posteriori conditional distribution is returned.
}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Harvey, A. C. (1990) Forecasting, structural time series models and the Kalman Filter. Cambridge, New York

Campos, E. L., De Leon, A. C. M. P., Fernandes, C. A. C. (2003) Modelo Poisson-Gama para Séries Temporais de Dados de Contagem - Teoria e Aplicações. 10a ESTE - Escola de Séries Temporais e Econometria

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Paramétrico: Uma Abordagem de Penalização por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Elétrica
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.likelihood}}, \code{\link{pgam.fit}}, \code{\link{predict.pgam}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
