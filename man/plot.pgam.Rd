\name{plot.pgam}
\alias{plot.pgam}
\title{Plot of estimated curves}
\description{Plot of the local level and, when semiparametric model is fitted, the estimated smooth terms.
}
\usage{
\method{plot}{pgam}(x, rug = TRUE, se = TRUE, at.once = FALSE, ...)
}
\arguments{
  \item{x}{object of class \code{pgam} holding the fitted model}
  \item{rug}{if \code{TRUE} a density rug is drawn on the bottom of the graphic}
  \item{se}{if \code{TRUE} error band is drawn around the fitted values}
  \item{at.once}{if \code{TRUE} each plot goes to a separate window, else the user is prompted to continue}
  \item{\dots}{further arguments passed to method}
}
\details{Error band of smooth terms is approximated.
}
\value{No value returned.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.fit}}, \code{\link{pgam.likelihood}}}\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS")

plot(m,at.once=TRUE)

}

	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
