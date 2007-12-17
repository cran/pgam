\name{bkfsmooth}
\alias{bkfsmooth}
\title{Smoothing of nonparametric terms}
\description{Interface for smoothing functions
}
\usage{
bkfsmooth(y, x, df, smoother = "spline", w = rep(1, length(y)))
}
\arguments{
  \item{y}{dependent variable for fitting. In semiparametric models, this is the partial residuals of parametric fit}
  \item{x}{independent variable. Univariate fit only}
  \item{df}{equivalent degrees of freedom. If \code{NULL} the smoothing parameter is selected by cross-validation}
  \item{smoother}{string with the name of the smoother to be used}
  \item{w}{vector with the diagonal elements of the weight matrix. Default is a vector of \eqn{1} with the same length of \eqn{y}}
}
\details{Although several smoothers can be used in semiparametric regression models, only natural cubic splines is intended to be used in Poisson-Gamma Additive Models due to its interesting mathematical properties.

Nowadays, this function interfaces the \code{\link[stats]{smooth.spline}} in \code{stats} library. It will become not dependent soon enough.
}
\value{
  \item{fitted}{smoothed values}
  \item{lev}{diagonal of the influence matrix}
  \item{df}{degrees of freedom}
}
\references{
Green, P. J., Silverman, B. W. (1994) Nonparametric Regression and Generalized Linear Models: a roughness penalty approach. Chapman and Hall, London

Hastie, T. J., Tibshirani, R. J.(1990) Generalized Additive Models. Chapman and Hall, London

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Parametrico: Uma Abordagem de Penalizacao por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Eletrica
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{predict.pgam}}}
	\keyword{internal}
