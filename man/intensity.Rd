\name{intensity}
\alias{intensity}
\title{Utility function}
\description{Apply spectral decomposition to its argument.
}
\usage{
intensity(x, n, y)
}
\arguments{
  \item{x}{frequency values}
  \item{n}{size of the time series}
  \item{y}{time series}
}
\details{The function apllies the spectral decomposition to the time series according to the following expression
\deqn{\left(\left(\sum\left(y*cos\left(x*t\right)\right)\right)^{2}+\left(\sum\left(y*cos\left(x*t\right)\right)\right)^{2}\right)/n}
}
\value{Decomposed series.
}
\references{
Box, G., Jenkins, G., Reinsel, G. (1994) Time Series Analysis : Forecasting and Control. 3rd edition, Prentice Hall, New Jersey.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{periodogram}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
