\name{lpnorm}
\alias{lpnorm}
\title{Utility function}
\description{Compute the Lp-norm of two sequencies.
}
\usage{
lpnorm(seq1, seq2 = 0, p = 0)
}
\arguments{
  \item{seq1}{first sequency}
  \item{seq2}{second sequency}
  \item{p}{L-space of the norm. \code{0} is infinity norm or max norm, \code{1} is the absolute value norm, \code{2} is L2 norm and so on}
}
\value{The computed norm value.
}
\author{Washington Leite Junger \cr \email{wjunger@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.parser}}}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
