\name{envelope}
\alias{envelope}
\title{Normal plot with simulated envelope of the residuals.
}
\description{A normal plot with simulated envelope of the residual is produced.
}
\usage{
envelope(object, type = "deviance", size = 0.95, rep = 20, epsilon = 0.001, maxit = 100, plot = TRUE, verbose = FALSE, ...)
}
\arguments{
  \item{object}{object of class \code{pgam} holding the fitted model}
  \item{type}{type of residuals to be extracted. Default is \code{deviance}. Options are described in \code{\link{residuals.pgam}}}
  \item{size}{value giving the size of the envelope. Default is \code{.95} which is equivalent to a 95\% band}
  \item{rep}{number of replications for envelope construction. Default is \code{20}}
  \item{epsilon}{convergence control to be passed to \code{\link{pgam}}}
  \item{maxit}{convergence control to be passed to \code{\link{pgam}}}
  \item{plot}{if \code{TRUE} a plot of the envelope is produced}
  \item{verbose}{if \code{TRUE} a sort of information is printed during the running time}
  \item{\dots}{further arguments to \code{\link{plot}} function}
}
\details{Sometimes the usual Q-Q plot shows an unsatisfactory pattern of the residuals of a model fitted and we are led to think that the model is badly specificated. The normal plot with simulated envelope indicates that under the distribution of the response variable the model is OK if only a few points fall off the envelope.

If \code{object} is of class \code{pgam} the envelope is estimated and optionally plotted, else if is of class \code{envelope} then it is only plotted.
}
\value{An object of class \code{envelope} enough to plot the envelope.
}
\references{
Atkinson, A. C. (1985) Plots, transformations and regression : an introduction to graphical methods of diagnostic regression analysis. Oxford Science Publications, Oxford.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{predict.pgam}}, \code{\link{residuals.pgam}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS",partial.resid="response")

e <- envelope(m)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
