\name{backfitting}
\alias{backfitting}
\title{Backfitting algorithm}
\description{Fit the nonparametric part of the model via backfitting algorithm.
}
\usage{
backfitting(y, x, df, fx, smoother = "spline", w = rep(1, length(y)), eps = 0.001, maxit = 100, info = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{dependent variable for fitting. In semiparametric models, this is the partial residuals of parametric fit}
  \item{x}{matrix of covariates}
  \item{df}{equivalent degrees of freedom}
  \item{fx}{if \code{FALSE} the smoothing parameter is chosen by cross-validation}
  \item{smoother}{string with the name of the smoother to be used}
  \item{w}{vector with the diagonal elements of the weight matrix. Default is a vector of \eqn{1} with the same length of \eqn{y}}
  \item{eps}{convergence control criterion}
  \item{maxit}{convergence control iterations}
  \item{info}{if \code{FALSE} only fitted values are returned. It it is faster during iterations}
}
\details{Backfitting algorithm estimates the approximating regression surface, working around the "curse of dimentionality".

More details soon enough.
}
\value{Fitted smooth curves and partial residuals.
}
\references{
Green, P. J., Silverman, B. W. (1994) Nonparametric Regression and Generalized Linear Models: a roughness penalty approach. Chapman and Hall, London

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Paramétrico: Uma Abordagem de Penalização por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Elétrica

Hastie, T. J., Tibshirani, R. J.(1990) Generalized Additive Models. Chapman and Hall, London
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{predict.pgam}}, \code{\link{pgam.smooth}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
