\name{pgam.psi2par}
\alias{pgam.psi2par}
\title{Utility function}
\description{
Put hyperparameters into unconstrained form for optimization.
}
\usage{
pgam.psi2par(w, beta, fperiod)
}
\arguments{
  \item{w}{discount factor of the Poisson-Gamma model}
  \item{beta}{explanatory variables coefficients}
  \item{fperiod}{vector containing as many seasonal factors as there are in model formula}
}
\value{Vector of unconstrained parameters.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.parser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
