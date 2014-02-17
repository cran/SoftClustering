\name{HardKMeans}
\alias{HardKMeans}
\title{Hard k-Means}
\usage{
HardKMeans(dataMatrix, meansMatrix, nClusters, maxIterations)
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
HardKMeans performs classic (hard) k-means.
}
\examples{
# An illustrative example clustering the sample data set DemoDataC2D2a.txt
HardKMeans(DemoDataC2D2a, 2, 2, 100)
}
\author{
M. Goetz, G. Peters, Y. Richter, D. Sacker, T. Wochinger.
}
\references{
Lloyd, S.P. (1982) Least squares quantization in PCM.
\emph{IEEE Transactions on Information Theory} \bold{28},
128--137.

Peters, G.; Crespo, F.; Lingras, P. and Weber, R. (2013)
Soft clustering - fuzzy and rough approaches and their
extensions and derivatives. \emph{International Journal of
Approximate Reasoning} \bold{54}, 307--322.
}

