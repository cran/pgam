\name{pgam.par2psi}
\alias{pgam.par2psi}
\title{Utility function}
\description{
Put unconstrained optimized parameters back into omega and beta form.}
\usage{
pgam.par2psi(par, fperiod)
}
\arguments{
  \item{par}{vector of unconstrained parameters}
  \item{fperiod}{vector containing as many seasonal factors as there are in model formula}
}
\value{List containing the hyperparameters \eqn{omega} and \eqn{beta}.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.parser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
