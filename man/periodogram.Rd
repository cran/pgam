\name{periodogram}
\alias{periodogram}
\title{Periodogram}
\description{A raw periodogram is returned end optionally plotted.}
\usage{
periodogram(x, rows = length(x), plot = TRUE, title = NULL, ...)
}
\arguments{
  \item{x}{time series}
  \item{rows}{number of rows to be returned. Default is \eqn{n}}
  \item{plot}{if \code{TRUE} a raw periodogram is plotted}
  \item{title}{alternative title for plotting}
  \item{\dots}{further arguments to \code{\link{plot}} function}
}
\details{
Although the raw periodogram is a biased estimator of the spectrum of a time series, it still is a good indicator of unresolved seasonality patterns in residuals of the fitted model. See \code{\link{intensity}} for frequencies extraction.
}
\value{Periodogram ordered by intensity.
}
\references{
Box, G., Jenkins, G., Reinsel, G. (1994) Time Series Analysis : Forecasting and Control. 3rd edition, Prentice Hall, New Jersey.
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
