\name{framebuilder}
\alias{framebuilder}
\title{Utility function}
\description{Generate a data frame given a formula and a dataset.}
\usage{
framebuilder(formula, dataset)
}
\arguments{
  \item{formula}{model formula}
  \item{dataset}{model dataset}
}
\details{Actually, this function is a wrapper for \code{\link{model.frame}}.
}
\value{A data frame restricted to the model.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.parser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
