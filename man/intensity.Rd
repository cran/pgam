\name{intensity}
\alias{intensity}
\title{Utility function}
\description{Apply spectral decomposition to its argument.
}
\usage{
intensity(w, x)
}
\arguments{
  \item{w}{frequency values}
  \item{x}{time series}
}
\details{The function apllies the spectral decomposition to the time series according to the following expression
\deqn{\left(\left(\sum\left(x*cos\left(w*t\right)\right)\right)^{2}+\left(\sum\left(x*cos\left(w*t\right)\right)\right)^{2}\right)/n}
}
\value{Decomposed series.
}
\references{
Box, G., Jenkins, G., Reinsel, G. (1994) Time Series Analysis : Forecasting and Control. 3rd edition, Prentice Hall, New Jersey.

Diggle, P. J. (1989) Time Series : A Biostatistical Introduction. Oxford University Press, Oxford.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{periodogram}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
