\name{periodogram}
\alias{periodogram}
\title{Raw Periodogram}
\description{A raw periodogram is returned and optionally plotted.}
\usage{
periodogram(y, rows = trunc(length(na.omit(y))/2-1), plot = TRUE, ...)
}
\arguments{
  \item{y}{time series}
  \item{rows}{number of rows to be returned. Default and largest is \eqn{n/2-1}, where \eqn{n} is the number of valid observations of the time series \eqn{y}}
  \item{plot}{if \code{TRUE} a raw periodogram is plotted}
  \item{\dots}{further arguments to \code{\link{plot}} function}
}
\details{
The raw periodogram is an estimator of the spectrum of a time series, it still is a good indicator of unresolved seasonality patterns in residuals of the fitted model. Check the function \code{intensity} for frequencies extraction.

This function plots a fancy periodogram where the intensities of the angular frequencies are plotted resembling tiny lollipops.
}
\value{Periodogram ordered by intensity.
}
\references{
Box, G., Jenkins, G., Reinsel, G. (1994) Time Series Analysis : Forecasting and Control. 3rd edition, Prentice Hall, New Jersey.

Diggle, P. J. (1989) Time Series : A Biostatistical Introduction. Oxford University Press, Oxford.
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\seealso{\code{\link{pgam}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
