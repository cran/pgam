%
\name{formparser}
\alias{formparser}
\title{Read the model formula and split it into the	parametric and nonparametric partitions}
\description{
Read the model formula and split it into two new ones concerning the parametric and nonparametric partitions of the predictor.
}
\usage{
formparser(formula, env=parent.frame())
}
\arguments{
\item{formula}{object representing the model formula. \R standard for GLM models}
\item{parent.frame}{an environment to be used as the parent of the environment created}
}
\details{
This function extracts all the information in the model formula. Most important, split the model into two parts regarding the parametric nature of the model.
A model can be specified as following:
\deqn{Y~f\left(sf_{r}\right)+V1+V2+V3+g\left(V4,df_{4}\right)+g\left(V5,df_{5}\right)}
where \eqn{sf_{r}} is a seasonal factor with period \eqn{r} and \eqn{df_{i}} is the degree of freedom of the smoother of the \emph{i}-th covariate. Actually, two new formulae will be created:
\deqn{~sf_{1}+\dots+sf_{r}+V1+V2+V3}
and
\deqn{~V4+V5}
These two formulae will be used to build the necessary datasets for model estimation. \emph{Dummy} variables reproducing the seasonal factors will be created also.

Models without explanatory variables must be specified as in the following formula
\deqn{Y~NULL}
}
\value{List containing the information needed for model fitting.
}
\author{
Washington Leite Junger \email{wjunger@ims.uerj.br}
}
\note{This function is not intended to be called directly.
}
\seealso{\code{\link{pgam}}, \code{\link{f}}, \code{\link{g}}}
	\keyword{internal}


