\name{envelope.pgam}
\alias{envelope.pgam}
\title{Normal plot with simulated envelope of the residuals.
}
\description{A normal plot with simulated envelope of the residual is produced.
}
\usage{
\method{envelope}{pgam}(object, type = "deviance", size = 0.95, rep = 19, optim.method=NULL, 
epsilon = 0.001, maxit = 100, plot = TRUE, verbose = FALSE, ...)
}
\arguments{
  \item{object}{object of class \code{pgam} holding the fitted model}
  \item{type}{type of residuals to be extracted. Default is \code{deviance}. Options are described in \code{\link{residuals.pgam}}}
  \item{size}{value giving the size of the envelope. Default is \code{.95} which is equivalent to a 95\% band}
  \item{rep}{number of replications for envelope construction. Default is \code{19}}, that is the smallest 95\% band that can be build
  \item{optim.method}{optimization method to be passed to \code{\link{pgam}} and therefore to \code{\link{optim}}}
  \item{epsilon}{convergence control to be passed to \code{\link{pgam}}}
  \item{maxit}{convergence control to be passed to \code{\link{pgam}}}
  \item{plot}{if \code{TRUE} a plot of the envelope is produced}
  \item{verbose}{if \code{TRUE} a sort of information is printed during the running time}
  \item{\dots}{further arguments to \code{\link{plot}} function}
}
\details{Sometimes the usual Q-Q plot shows an unsatisfactory pattern of the residuals of a model fitted and we are led to think that the model is badly specificated. The normal plot with simulated envelope indicates that under the distribution of the response variable the model is OK if only a few points fall off the envelope.

If \code{object} is of class \code{pgam} the envelope is estimated and optionally plotted, else if is of class \code{envelope} then it is only plotted.
}
\value{An object of class \code{envelope} holding the information needed to plot the envelope.
}
\references{
Atkinson, A. C. (1985) Plots, transformations and regression : an introduction to graphical methods of diagnostic regression analysis. Oxford Science Publications, Oxford.
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{predict.pgam}}, \code{\link{residuals.pgam}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
