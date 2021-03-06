\name{hmapSpectra}
\alias{hmapSpectra}

\title{
Create a Seriated Heat Map Comparing Samples and Spectral Data for a Spectra Object
}
\description{
Creates a heat map with marginal dendrograms using seriation procedures.  Very briefly, the samples that are most like each other occur in one corner, and the frequencies that are most informative with respect to the samples are in that corner as well. This is achieved by using heirchical cluster analysis and then re-ordering the clusters in a coordinated way across each dimension.  See the vignette for package \code{seriation}.
}
\usage{
hmapSpectra(spectra, ...)
}

\arguments{
  \item{spectra}{ An object of S3 class \code{\link{Spectra}}.}

  \item{\dots}{
Additional arguments to be passed downstream.  A great deal of control is available - check \code{?hmap} for details.  Most of the control actually derives from the \code{heatmap2} function in package \code{gplots}.
}
}
\value{
A list composed of two data frames. One is the frequencies and their rankings, the other is samples and their rankings.  Side effect is a plot.
}
\references{
\url{https://github.com/bryanhanson/ChemoSpec}

}

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}

\seealso{
\code{\link[seriation]{hmap}} which will get you to the package (there is no package index page); the vignette is a good place to begin (\code{browseVignettes("seriation")}).
}

\examples{
data(SrE.IR)
# Let's look just at the carbonyl region
IR <- removeFreq(SrE.IR, rem.freq = SrE.IR$freq > 1850 | SrE.IR$freq < 1650)
res <- hmapSpectra(IR, col = heat.colors(5), labCol = FALSE)
}
\keyword{ multivariate }

