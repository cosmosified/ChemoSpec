\name{hypTestScores}
\alias{hypTestScores}

\title{ Conduct MANOVA using PCA Scores and Factors in a Spectra Object }

\description{
This function provides a convenient interface for carrying out manova using the scores from PCA and the factors (groups) stored in a \code{\link{Spectra}} object.  The function will do anova as well, if you only provide one vector of scores, though this is probably of limited use.  A \code{\link{Spectra}} object contains group information stored in its \code{spectra$groups} element, but you can also use \code{\link{splitSpectraGroups}} to generate additional groups/factors that might be more useful than the original.
}

\usage{
hypTestScores(spectra, pca, pcs = 1:3, fac = NULL, ...)
}

\arguments{
  \item{spectra}{An object of S3 class \code{\link{Spectra}}.}

  \item{pca}{ An object of class \code{\link{prcomp}}.}
  \item{pcs}{
An integer vector giving the PCA scores to use as the response in the manova analysis.
}
  \item{fac}{
A character vector giving the factors to be used in the manova.  They will be searched for within the \code{\link{Spectra}} object.
}
  \item{\dots}{
Additional arguments to be passed downstream, in this case to \code{aov}.  Untested.
}
}

\details{
This function is an extraordinarily thin wrapper which helps the user to avoid writing a very tedious \code{formula} specification.
}

\value{
The results of the analysis print to the console unless assigned.  If assigned, the object class is one of several described in \code{\link{aov}} depending upon the data passed to it.
}
\references{ \url{https://github.com/bryanhanson/ChemoSpec} }

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}

\seealso{
\code{\link{splitSpectraGroups}} which can be used to create additional factor elements in the \code{"Spectra"} object, which can then be used with this function.
}
\examples{
data(metMUD2)
# Original factor encoding:
levels(metMUD2$groups)
# Split those original levels into 2 new ones (re-code them)
new.grps <- list(geneBb = c("B", "b"), geneCc = c("C", "c"))
mM3 <- splitSpectraGroups(metMUD2, new.grps)
# Now do the PCA and anova
pca <- c_pcaSpectra(mM3)
hypTestScores(mM3, pca, fac = c("geneBb", "geneCc"))

}
\keyword{ multivariate }
\keyword{ htest }
