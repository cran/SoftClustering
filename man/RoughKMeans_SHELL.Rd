\name{RoughKMeans_SHELL}
\alias{RoughKMeans_SHELL}
\title{Rough k-Means Shell}
\usage{
RoughKMeans_SHELL(clusterAlgorithm, dataMatrix, meansMatrix, nClusters,
                  normalizationMethod, maxIterations, plotDimensions,
                  colouredPlot, threshold, weightLower)
}
\arguments{
  \item{clusterAlgorithm}{Select 0 = classic k-means, 1 =
  Lingras & West's rough k-means, 2 = Peters' rough
  k-means, 3 = \eqn{\pi} rough k-means. Default:
  clusterAlgorithm = 3 (\eqn{\pi} rough k-means).}

  \item{dataMatrix}{Matrix with the objects to be
  clustered. Dimension: [nObjects x nClusters].}

  \item{meansMatrix}{Select means derived from 1 = random
  (unity interval), 2 = maximum distances, matrix
  [nClusters x nFeatrues] = self-defined means. Default: 2
  = maximum distances.}

  \item{nClusters}{Number of clusters: Integer in [2,
  nObjects). Default: nClusters = 2. Note: Plotting is
  limited to a maximum of 5 clusters.}

  \item{normalizationMethod}{1 = unity interval, 2 = normal
  distribution (sample variance), 3 = normal distribution
  (population variance). Any other value returns the matrix
  unchanged. Default: meansMatrix = 1 (unity interval).}

  \item{maxIterations}{Maximum number of iterations.
  Default: maxIterations=100.}

  \item{plotDimensions}{An integer vector of the length 2.
  Defines the to be plotted feature dimensions, i.e.
  max(plotDimensions = c(1:2)) <= nFeatrues. Default:
  plotDimensions = c(1:2).}

  \item{colouredPlot}{Select TRUE = colouredPlot plot,
  FALSE = black/white plot.}

  \item{threshold}{Relative threshold in rough k-means
  algorithms (threshold >= 1.0).  Default: threshold = 1.5.
  Note: It can be ignored for classic k-means.}

  \item{weightLower}{Weight of the lower approximation in
  rough k-means algorithms (0.0 <= weightLower <= 1.0).
  Default: weightLower = 0.7. Note: It can be ignored for
  classic k-means and \eqn{\pi} rough k-means}
}
\value{
2D-plot of clustering results. The boundary objects are
represented by stars (*).

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
RoughKMeans_SHELL performs rough k-means algorithms with
options for normalization and a 2D-plot of the results.
}
\examples{
# An illustrative example clustering the sample data set DemoDataC2D2a.txt
RoughKMeans_SHELL(3, DemoDataC2D2a, 2, 2, 1, 100, c(1:2), TRUE, 1.5, 0.7)
}
\author{
M. Goetz, G. Peters, Y. Richter, D. Sacker, T. Wochinger.
}

