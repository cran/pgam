\name{link}
\alias{link}
\title{Utility function}
\description{Apply the link function or its inverse to the argument.
}
\usage{
link(x, link = "log", inv = FALSE)
}
\arguments{
  \item{x}{vector containing the predictor}
  \item{link}{string with the name of the link function}
  \item{inv}{if \code{TRUE} its inverse is applied}
}
\details{This function is intended to port other link functions than \eqn{\log{\left(\right)}} to Poisson-Gamma Additive Models. For now, the only allowed value is \code{"log"}.
}
\value{Evaluated link function at \code{x} values.
}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

McCullagh, P., Nelder, J. A. (1989). Generalized Linear Models. Chapman and Hall, 2nd edition, London
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{formparser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
