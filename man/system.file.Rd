% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paths.R
\name{system.file}
\alias{system.file}
\title{Get path to a saved file in a data repository}
\usage{
system.file(..., package = "base", lib.loc = NULL, mustWork = FALSE)
}
\arguments{
\item{...}{character vectors, specifying subdirectory and file(s)
    within some package.  The default, none, returns the
    root of the package.  Wildcards are not supported.}

\item{package}{a character string with the name of a single package.
    An error occurs if more than one package name is given.}

\item{lib.loc}{a character vector with path names of \R libraries.
    See \sQuote{Details} for the meaning of the default value of \code{NULL}.}

\item{mustWork}{logical.  If \code{TRUE}, an error is given if there
    are no matching files.}
}
\value{
A path to the file(s) specified that exist, as \code{base::system.file()}
}
\description{
If \code{package=='datarepository'} then the path to the data repository is appended with the specified file(s).
}
\details{
This checks the existence of the specified files with
  \code{\link[base]{file.exists}}.  So file paths are only returned if there
  are sufficient permissions to establish their existence.

  The unnamed arguments in \code{...} are usually character strings, but
  if character vectors they are recycled to the same length.

  This uses \code{\link[base]{find.package}} to find the package, and hence
  with the default \code{lib.loc = NULL} looks first for attached
  packages then in each library listed in \code{\link[base]{.libPaths}()}.
  Note that if a namespace is loaded but the package is not attached,
  this will look only on \code{\link[base]{.libPaths}()}.
}
\examples{
system.file()                  # The root of the 'base' package
system.file(package = "stats") # The root of package 'stats'
system.file("INDEX")
system.file("help", "AnIndex", package = "splines")
}
\seealso{
base::system.file
}
