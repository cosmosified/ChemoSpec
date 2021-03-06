\name{normVec}
\alias{normVec}
\title{
Normalize a Vector to range -1 to +1
}
\description{
Each value of the vector passed to the function is divided by the square root of the sum of every value squared, producing a new vector whose range is restricted to, at most, -1 to +1.  Note that this assumes that the mean of the original vector is zero. An internal function, not generally called by the user.
}
\usage{
normVec(x)
}
\arguments{
  \item{x}{
A numeric argument whose values are to be normalized.
}
}
\value{
The normalized vector.
}

\references{
\url{https://github.com/bryanhanson/ChemoSpec}
}

\author{
Bryan A. Hanson, DePauw University. \email{hanson@depauw.edu}
}

\note{
The idea was taken from "An Introduction to rggobi" found at the ggobi web site: \url{http://www.ggobi.org}.
}

\examples{
x1 <- rnorm(20, 2, 2)
range(x1)
sd(x1)/diff(range(x1))
x2 <- normVec(x1)
range(x2)
sd(x2)/diff(range(x2))

}
\keyword{ utilities }
\keyword{ manip }
