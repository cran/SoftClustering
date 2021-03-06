% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RoughClustering.r
\name{RoughKMeans_PE}
\alias{RoughKMeans_PE}
\title{Peters' Rough k-Means}
\usage{
RoughKMeans_PE(dataMatrix, meansMatrix, nClusters, maxIterations, threshold, weightLower)
}
\arguments{
\item{dataMatrix}{Matrix with the objects to be clustered. Dimension: [nObjects x nFeatures].}

\item{meansMatrix}{Select means derived from 1 = random (unity interval), 2 = maximum distances, matrix [nClusters x nFeatures] = self-defined means. Default: 2 = maximum distances.}

\item{nClusters}{Number of clusters: Integer in [2, nObjects). Note, nCluster must be set even when meansMatrix is a matrix. For transparency, nClusters will not be overridden by the number of clusters derived from meansMatrix. Default: nClusters=2.}

\item{maxIterations}{Maximum number of iterations. Default: maxIterations=100.}

\item{threshold}{Relative threshold in rough k-means algorithms (threshold >= 1.0).  Default: threshold = 1.5.}

\item{weightLower}{Weight of the lower approximation in rough k-means algorithms (0.0 <= weightLower <= 1.0).  Default: weightLower = 0.7.}
}
\value{
\code{$upperApprox}: Obtained upper approximations [nObjects x nClusters]. Note: Apply function \code{createLowerMShipMatrix()} to obtain lower approximations; and for the boundary: \code{boundary = upperApprox - lowerApprox}.

\code{$clusterMeans}: Obtained means [nClusters x nFeatures].

\code{$nIterations}: Number of iterations.
}
\description{
RoughKMeans_PE performs Peters' k-means clustering algorithm.
}
\examples{
# An illustrative example clustering the sample data set DemoDataC2D2a.txt
RoughKMeans_PE(DemoDataC2D2a, 2, 2, 100, 1.5, 0.7)
}
\references{
Peters, G. (2006) Some refinements of rough k-means clustering. \emph{Pattern Recognition} \bold{39}, 1481--1491. <doi:10.1016/j.patcog.2006.02.002>.

Peters, G.; Crespo, F.; Lingras, P. and Weber, R. (2013) Soft clustering -- fuzzy and rough approaches and their extensions and derivatives. \emph{International Journal of Approximate Reasoning} \bold{54}, 307--322. <doi:10.1016/j.ijar.2012.10.003>.

Peters, G. (2014) Rough clustering utilizing the principle of indifference. \emph{Information Sciences} \bold{277}, 358--374. <doi:10.1016/j.ins.2014.02.073>.

Peters, G. (2015) Is there any need for rough clustering?  \emph{Pattern Recognition Letters} \bold{53}, 31--37. <doi:10.1016/j.patrec.2014.11.003>.
}
\author{
M. Goetz, G. Peters, Y. Richter, D. Sacker, T. Wochinger.
}
