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
The raw periodogram is an estimator of the spectrum of a time series, it still is a good indicator of unresolved seasonality patterns in residuals of the fitted model. See \code{\link{intensity}} for frequencies extraction.

This function plots a fancy periodogram where the intensities of the angular frequencies are plotted resembling tiny lollipops.
}
\value{Periodogram ordered by intensity.
}
\references{
Box, G., Jenkins, G., Reinsel, G. (1994) Time Series Analysis : Forecasting and Control. 3rd edition, Prentice Hall, New Jersey.

Diggle, P. J. (1989) Time Series : A Biostatistical Introduction. Oxford University Press, Oxford.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{intensity}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS",partial.resid="response")

r <- resid(m)
p <- periodogram(r)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
