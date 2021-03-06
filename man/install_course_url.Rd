\name{install_course_url}
\alias{install_course_url}
\title{Install a course from a url that points to a zip file}
\usage{
install_course_url(url, multi = FALSE)
}
\arguments{
  \item{url}{URL that points to a zipped course directory}

  \item{multi}{The user should set to \code{TRUE} if the
  zipped directory contains multiple courses. The default
  value is \code{FALSE}.}
}
\description{
Install a course from a url that points to a zip file
}
\examples{
\dontrun{

install_course_url("http://www.biostat.jhsph.edu/~rpeng/File_Hash_Course.zip")
}
}

