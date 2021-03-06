% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dgumbel.R
\name{dgumbel}
\alias{dgumbel}
\title{calcuate the density of Gumbel copula}
\usage{
dgumbel(u, v, alpha)
}
\arguments{
\item{u}{a vector containing cumulative densities for one replicate data.}

\item{v}{a vector containing cumulative densities for the other replicate data.}

\item{alpha}{the single paramter for the Gumbel copula. It has a range of (0, 1], perfect dependence
is archieved if \eqn{\alpha} approximates 0, while \eqn{\alpha = 0} implies no dependence.}
}
\value{
dgumbel calculates the density of Gumbel copula given the cumulative densities of two random
variables and the parameter of Gumbel copula. The empirical cumulative densities of the two random
variables could be obtained using the function \code{empdist()}. Invalid arguments will result in value \code{NaN}.
}
\description{
compute the density of Gumbel copula given the two individual variables, i.g. sequencing read counts.
}
\details{
The formula for the distribution of bivariate Clayton copula is:
\deqn{C(u, v | \alpha) = exp(-((-log(u))^\alpha+(-log(v))^\alpha)^(1/\alpha))}
The formula for the corresponding density is:
\deqn{c(u, v | \alpha) = C(u, v | \alpha)*(u*v)^(-1)*((-log(u))^\alpha+
                 (-log(v))^\alpha)^(-2+2/\alpha)*(log(u)*log(v))^(\alpha-1)*
                 (1+(\alpha-1)*((-log(u))^\alpha+(-log(v))^\alpha)^(-1/\alpha))}
 where \eqn{0 < \alpha \le 0} in our application.
}
\examples{
data(Chipseq_TF)
x1 <- Chipseq_TF[,1]
x2 <- Chipseq_TF[,2]
U=empdist(x1, x2)
u <- U[,1]
v <- U[,2]
alpha <- 2
dgumbel(u, v, alpha)
}
\references{
Nelsen, R. (2006). An Introduction to Copula, Second Edition, Springer.
G. G. Venter (2001). Tails of copulas. In Proceedings ASTIN Washington, USA, pages 68-113.
}

