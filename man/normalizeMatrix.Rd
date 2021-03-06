% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RoughClustering.r
\name{normalizeMatrix}
\alias{normalizeMatrix}
\title{Matrix Normalization}
\usage{
normalizeMatrix(dataMatrix, normMethod, bycol)
}
\arguments{
\item{dataMatrix}{Matrix with the objects to be normalized.}

\item{normMethod}{1 = unity interval, 2 = normal distribution (sample variance), 3 = normal distribution (population variance). Any other value returns the matrix unchanged. Default: meansMatrix = 1 (unity interval).}

\item{bycol}{TRUE = columns are normalized, i.e., each column is considered separately (e.g., in case of the unity interval and a column colA: max(colA)=1 and min(colA)=0). For bycol = FALSE rows are normalized. Default: bycol = TRUE (columns are normalized).}
}
\value{
Normalized matrix.
}
\description{
normalizeMatrix delivers a normalized matrix.
}
\author{
M. Goetz, G. Peters, Y. Richter, D. Sacker, T. Wochinger.
}
