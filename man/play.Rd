\name{play}
\alias{play}
\title{Tell swirl to ignore console input for a while.}
\usage{
play()
}
\description{
It is sometimes useful to play around in the R console out
of curiosity or to solidify a concept. This command will
cause swirl to remain idle, allowing the user to experiment
at will, until the command \code{nxt()} is entered.
}
\examples{
\dontrun{

| Create a new variable called `y` that contains the number 8.

> play()

| Entering play mode. Experiment as you please, then type nxt()
| when you ready to resume the lesson.

> 10/14
> [1] 0.7142857
> zz <- 99
> zz
> [1] 99
> nxt()

| Resuming lesson...
}
}

