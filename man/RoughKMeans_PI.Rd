\name{RoughKMeans_PI}
\alias{RoughKMeans_PI}
\title{\code{PI} Rough k-Means}
\usage{
RoughKMeans_PI(dataMatrix, meansMatrix, nClusters, maxIterations, threshold)
}
\arguments{
  \item{dataMatrix}{Matrix with the objects to be
  clustered. Dimension: [nObjects x nClusters].}

  \item{meansMatrix}{Select means derived from 1 = random
  (unity interval), 2 = maximum distances, matrix
  [nClusters x nFeatrues] = self-defined means. Default: 2
  = maximum distances.}

  \item{nClusters}{Number of clusters: Integer in [2,
  nObjects). Default: nClusters = 2.}

  \item{maxIterations}{Maximum number of iterations.
  Default: maxIterations=100.}

  \item{threshold}{Relative threshold in rough k-means
  algorithms (threshold >= 1.0).  Default: threshold =
  1.5.}
}
\value{
\code{$upperApprox}: Obtained upper approximations
[nObjects x nClusters]. Note: Apply function
\code{createLowerMShipMatrix()} to obtain lower
approximations; and for the boundary: \code{boundary =
upperApprox - lowerApprox}.

\code{$clusterMeans}: Obtained means [nClusters x
nFeatures].

\code{$nIterations}: Number of iterations.
}
\description{
RoughKMeans_PI performs \code{pi} k-means clustering
algorithm in its standard case. Therefore, weights are not
required.
}
\examples{
# An illustrative example clustering the sample data set DemoDataC2D2a.txt
RoughKMeans_PI(DemoDataC2D2a, 2, 2, 100, 1.5)
}
\author{
M. Goetz, G. Peters, Y. Richter, D. Sacker, T. Wochinger.
}
\references{
Peters, G.; Crespo, F.; Lingras, P. and Weber, R. (2013)
Soft clustering - fuzzy and rough approaches and their
extensions and derivatives. \emph{International Journal of
Approximate Reasoning} \bold{54}, 307--322.

Peters, G. (2014) Rough clustering utilizing the principle
of indifference. \emph{Information Sciences} \bold{}, in
press.
}

