\name{f}
\alias{f}
\title{Utility function}
\description{Generate the partition of design matrix regarded to the seasonal factor in its argument. Used in the model formula.
}
\usage{
f(factorvar)
}
\arguments{
  \item{factorvar}{variable with the seasonal levels}
}
\value{List containing data matrix of dummy variables, level names and seasonal periods.
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br}
}
\note{This function is intended to be called from within a model formula.
}
\seealso{\code{\link{pgam}}, \code{\link{formparser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
