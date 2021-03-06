% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calcCutOff.R
\name{calcCutOff}
\alias{calcCutOff}
\title{Calculate multiple-test cut-off}
\usage{
calcCutOff(
  phy,
  n = 1000,
  mc.cores = 1,
  model,
  measure = "AICc",
  alpha.error = 0.05,
  ...
)
}
\arguments{
\item{phy}{An object of class \code{phylo} (see \pkg{ape}).}

\item{n}{Number of simulations}

\item{mc.cores}{Number of cores for parallel processing for linux-type systems (not applicable to Windows)}

\item{model}{Evolutionary model, typically "tm1", "tm2", or "timeSlice", which is used to test the empirical data}

\item{measure}{Measure used to summarise the model. One of "lnL" (log-likelihood), "AIC", or "AICc"}

\item{alpha.error}{Target for the desired type-one error rate for the model (default 0.05)}

\item{...}{Arguments to be passed to \code{\link{transformPhylo.ML}} which should be identical to the model applied to empirical data}
}
\value{
The cut-off requred to produce an type-one error rate equal to quantile.cut.off (default = 0.05) when data are simulated under Brownian motion, and these data are analysed under the appropriate model.
}
\description{
Calculate the log-likelihood, AIC, or AICc cut-off necessary for type-one error to reach acceptable levels
}
\examples{
data(anolis.tree)
set.seed(393)
# calculated necessary AICc cut-off to reduce type-one error to 5\% 
# for a timeSlice model with a split at 30Ma (only 5 simulations used,
# it's recommend to use 1000 for analyses)
calcCutOff(anolis.tree, n=5, model="timeSlice", splitTime=30)
}
\seealso{
\code{\link{transformPhylo.ML}}, \code{\link{transformPhylo.ll}}, \code{\link{transformPhylo}}, \code{\link{transformPhylo.MCMC}}
}
\author{
Mark Puttick
}
