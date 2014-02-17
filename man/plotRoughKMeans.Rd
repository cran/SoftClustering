\name{plotRoughKMeans}
\alias{plotRoughKMeans}
\title{Rough k-Means Plotting}
\usage{
plotRoughKMeans(dataMatrix, upperMShipMatrix, meansMatrix, plotDimensions, colouredPlot)
}
\arguments{
  \item{dataMatrix}{Matrix with the objects to be plotted.}

  \item{upperMShipMatrix}{Corresponding matrix with upper
  approximations.}

  \item{meansMatrix}{Corresponding means matrix.}

  \item{plotDimensions}{An integer vector of the length 2.
  Defines the to be plotted feature dimensions, i.e.
  max(plotDimensions = c(1:2)) <= nFeatrues. Default:
  plotDimensions = c(1:2).}

  \item{colouredPlot}{Select TRUE = colouredPlot plot,
  FALSE = black/white plot.}
}
\value{
2D-plot of clustering results. The boundary objects are
represented by stars (*).
}
\description{
plotRoughKMeans plots the rough clustering results in 2D.
Note: Plotting is limited to a maximum of 5 clusters.
}
\author{
G. Peters.
}

