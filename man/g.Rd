\name{g}
\alias{g}
\title{Utility function}
\description{Collect information to smooth the term in its argument. Used in the model formula.
}
\usage{
g(var, df, fx = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{var}{variable to be smoothed}
  \item{df}{equivalent degrees of freedom to be passed to the smoother}
  \item{fx}{if \code{FALSE}, \code{df} is ignored and smoothing parameter is chosen by cross-validation}
}
\details{This function only sets things up for model fitting. The smooth terms are actually fitted by \code{\link{pgam.smooth}}.
}
\value{List containing the same elements of its argument.
}
\references{
Green, P. J., Silverman, B. W. (1994) Nonparametric Regression and Generalized Linear Models: a roughness penalty approach. Chapman and Hall, London

Hastie, T. J., Tibshirani, R. J.(1990) Generalized Additive Models. Chapman and Hall, London

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Paramétrico: Uma Abordagem de Penalização por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Elétrica
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\note{This function is intended to be called from within a model formula.
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.parser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
