\name{g}
\alias{g}
\title{Utility function}
\description{Collect information to smooth the term in its argument. Used in the model formula.
}
\usage{
g(var, df = NULL)
}
\arguments{
  \item{var}{variable to be smoothed}
  \item{df}{equivalent degrees of freedom to be passed to the smoother. If \code{NULL}, smoothing parameter is selected by cross-validation}
}
\details{This function only sets things up for model fitting. The smooth terms are actually fitted by \code{\link{bkfsmooth}}.
}
\value{List containing the same elements of its argument.
}
\references{
Green, P. J., Silverman, B. W. (1994) Nonparametric Regression and Generalized Linear Models: a roughness penalty approach. Chapman and Hall, London

Hastie, T. J., Tibshirani, R. J.(1990) Generalized Additive Models. Chapman and Hall, London

Junger, W. L. (2004) Semiparametric Poisson-Gamma models: a roughness penalty approach. MSc Dissertation. Rio de Janeiro, PUC-Rio, Department of Electrical Engineering. 
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br}
}
\note{This function is intended to be called from within a model formula.
}
\seealso{\code{\link{pgam}}, \code{\link{formparser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
