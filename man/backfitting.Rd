\name{backfitting}
\alias{backfitting}
\title{Backfitting algorithm}
\description{Fit the nonparametric part of the model via backfitting algorithm.
}
\usage{
backfitting(y, x, df, smoother = "spline",
w = rep(1, length(y)), eps = 0.001, maxit = 100, info = TRUE)
}
\arguments{
  \item{y}{dependent variable for fitting. In semiparametric models, this is the partial residuals of parametric fit}
  \item{x}{matrix of covariates}
  \item{df}{equivalent degrees of freedom. If \code{NULL} the smoothing parameter is selected by cross-validation}
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

Junger, W. L. (2004) Semiparametric Poisson-Gamma models: a roughness penalty approach. MSc Dissertation. Rio de Janeiro, PUC-Rio, Department of Electrical Engineering. 

Hastie, T. J., Tibshirani, R. J.(1990) Generalized Additive Models. Chapman and Hall, London
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{predict.pgam}}, \code{\link{bkfsmooth}}}
	\keyword{internal}
