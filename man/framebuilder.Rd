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
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{formparser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
