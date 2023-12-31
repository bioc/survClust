% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotStats.R
\name{plotStats}
\alias{plotStats}
\title{Plot the output from \code{getStats}}
\usage{
plotStats(out.getStats, labels = NULL, ...)
}
\arguments{
\item{out.getStats}{list output from \code{getStats}}

\item{labels}{labels to print on the boxplot. Default is \code{2:8}}

\item{...}{{additional arguments as passed to \code{boxplot} function}}
}
\value{
a plot with three boxplots summarizing logrank, standardized pooled within sum of squares (SPWSS)
and if any class label has less than 5 samples
}
\description{
Plot the output from \code{getStats}
}
\details{
plots boxplots summarizing output of \code{cv.survclust} calculated via \code{getStats}.
Use this to pick optimal \code{k}. Optimal \code{k} maximized logrank and minimizes SPWSS similar to the elbow
method. Use \code{consensus_summary} to pick the best \code{k} and arrive at unique consolidated class labels
}
\examples{
library(survClust)
ss_stats <- getStats(uvm_survClust_cv.fit, kk=7, cvr=10)
plotStats(ss_stats, 2:7)

}
\author{
Arshi Arora
}
