\name{pgam.hes2se}
\alias{pgam.hes2se}
\title{Utility function}
\description{
Put hyperparameters hessian matrix in the form of omega and beta standard error.
}
\usage{
pgam.hes2se(hes, fperiod)
}
\arguments{
  \item{hes}{hessian matrix returned by \code{optim}}
  \item{fperiod}{vector containing as many seasonal factors as there are in model formula}
}
\value{List containing the hyperparameters \eqn{omega} and \eqn{beta} standard errors.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.parser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
