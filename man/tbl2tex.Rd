\name{tbl2tex}
\alias{tbl2tex}
\title{LaTeX table exporter}
\description{Export a data frame to a fancy LaTeX table environment.
}
\usage{
tbl2tex(tbl, label = "tbl:label(must_be_changed!)", caption = "Table generated with tbl2tex.", centered = TRUE, alignment = "center", digits = getOption("digits"), hline = TRUE, vline = TRUE, file = "", topleftcell = "   ")
}
\arguments{
  \item{tbl}{object of type data frame or matrix}
  \item{label}{label for LaTeX cross reference}
  \item{caption}{caption for LaTeX tabular environment}
  \item{centered}{logical. \code{TRUE} for centered cells}
  \item{alignment}{alignment of the object on the page}
  \item{digits}{decimal digits after decimal point}
  \item{hline}{logical. \code{TRUE} for horizontal borders}
  \item{vline}{logical. \code{TRUE} for vertical borders}
  \item{file}{filename for outputting. If none is provided, LaTeX code is routed through the console}
  \item{topleftcell}{text for the top-left cell of the table}
}
\details{This is a utility function intended to ease convertion of \emph{R} objects to LaTeX format. It only exports data frame or data matrix nonetheless.
}
\value{LaTeX code is routed through file or console for copying and pasting.
}
\author{Washington Leite Junger \email{wjunger@ims.uerj.br}
}
\note{For now, it handles only numerical data.
}
\seealso{\code{\link{pgam}}}
\examples{
library(pgam)
data(aihrio)
m <- aihrio[1:10,4:10]
tbl2tex(m,label="tbl:r_example",caption="R example of tbl2tex",digits=4)
}	
	
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
