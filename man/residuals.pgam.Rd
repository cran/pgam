\name{residuals.pgam}
\alias{residuals.pgam}
\title{Residuals extraction}
\description{
Method for residuals extraction.
}
\usage{
\method{residuals}{pgam}(object, type = "deviance", ...)
}
\arguments{
  \item{object}{object of class \code{pgam} holding the fitted model}
  \item{type}{type of residuals to be extracted. Default is \code{deviance}. Options are described in \bold{Details}}
  \item{\dots}{further arguments passed to method}
}
\details{
The types of residuals available and a brief description are the following:

\code{response}\cr
These are raw residuals of the form \eqn{r_{t}=y_{t}-E\left(y_{t}|Y_{t-1}\right)}.

\code{pearson}\cr
Pearson residuals are quite known and for this model they take the form \eqn{r_{t}=\left(y_{t}-E\left(y_{t}|Y_{t-1}\right)\right)/Var\left(y_{t}|Y_{t-1}\right)}.

\code{deviance}\cr
Deviance residuals are estimated by \eqn{r_{t}=sign\left(y_{t}-E\left(y_{t}|Y_{t-1}\right)\right)*sqrt\left(d_{t}\right)}, where \eqn{d_{t}} is the deviance contribution of the \emph{t}-th observation. See \code{\link{deviance.pgam}} for details on deviance component estimation.

\code{std_deviance}\cr
Same as deviance, but the deviance component is divided by \eqn{(1-h_{t})}, where \eqn{h_{t}} is the \emph{t}-th element of the diagonal of the pseudo hat matrix of the approximating linear model. So they turn into \eqn{r_{t}=sign\left(y_{t}-E\left(y_{t}|Y_{t-1}\right)\right)*sqrt\left(d_{t}/\left(1-h_{t}\right)\right)}.\cr
The element \eqn{h_{t}} has the form \eqn{h_{t}=\omega\exp\left(\eta_{t+1}\right)/\sum_{j=0}^{t-1}\omega^{j}\exp\left(\eta_{t-j}\right)}, where \eqn{\eta} is the predictor of the approximating linear model.

\code{std_scl_deviance}\cr
Just like the last one except for the dispersion parameter in its expression, so they have the form \eqn{r_{t}=sign\left(y_{t}-E\left(y_{t}|Y_{t-1}\right)\right)*sqrt\left(d_{t}/\phi*\left(1-h_{t}\right)\right)}, where \eqn{\phi} is the estimated dispersion parameter of the model. See \code{\link{summary.pgam}} for \eqn{\phi} estimation.

%\code{adj_deviance}\cr
%These are the deviance residuals multiplied by the coefficient of skewness estimated from the distribution. So, considering the negative binomial predictive distribution, they take the form \eqn{r_{t}=sign\left(y_{t}-E\left(y_{t}|Y_{t-1}\right)\right)*sqrt\left(d_{t}\right)*K}, where \eqn{K} is estimated by \eqn{K=\left(2-btt1\right)/sqrt\left(att1*\left(1-btt1\right)\right)}.
}
\value{Vector of residuals of the model fitted.
}
\references{
Harvey, A. C., Fernandes, C. (1989) Time series models for count data or qualitative observations. Journal of Business and Economic Statistics, 7(4):407--417

Campos, E. L., De Leon, A. C. M. P., Fernandes, C. A. C. (2003) Modelo Poisson-Gama para Séries Temporais de Dados de Contagem - Teoria e Aplicações. 10a ESTE - Escola de Séries Temporais e Econometria

Junger, W. L. (2004) Modelo Poisson-Gama Semi-Paramérico: Uma Abordagem de Penalização por Rugosidade. MSc Thesis. Rio de Janeiro, PUC-Rio, Departamento de Engenharia Elétrica

McCullagh, P., Nelder, J. A. (1989). Generalized Linear Models. Chapman and Hall, 2nd edition, London

Pierce, D. A., Schafer, D. W. (1986) Residuals in generalized linear models. Journal of the American Statistical Association, 81(396),977-986
} 
\author{Washington Leite Junger \email{wjunger@ims.uerj.br} and Antonio Ponce de Leon \email{ponce@ims.uerj.br}
}
\seealso{\code{\link{pgam}}, \code{\link{pgam.fit}}, \code{\link{predict.pgam}}}
\examples{
library(pgam)
data(aihrio)
attach(aihrio)
form <- ITRESP5~f(WEEK)+HOLIDAYS+rain+PM+g(tmpmax,7)+g(wet,3)
m <- pgam(form,aihrio,omega=.8,beta=.01,maxit=1e2,eps=1e-4,optim.method="BFGS")

r <- resid(m,"pearson")
plot(r)

}
	\keyword{ts}
	\keyword{smooth}
	\keyword{regression}
