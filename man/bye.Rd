\name{bye}
\alias{bye}
\title{Exit swirl.}
\usage{
bye()
}
\description{
swirl operates by installing a callback function which
responds to commands entered in the R console. This is how
it captures and tests answers given by the user in the R
console. swirl will remain in operation until this callback
is removed, which is what \code{bye()} does.
}
\examples{
\dontrun{

| Create a new variable called `x` that contains the number 3.

> bye()

| Leaving swirl now. Type swirl() to resume.
}
}

