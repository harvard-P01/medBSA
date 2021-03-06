% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/makeNoninformative.R
\name{makeNoninformative}
\alias{makeNoninformative}
\title{Make a variance-covariance matrix essentially noninformative}
\usage{
makeNoninformative(covmat, nu = 10000, except = NULL)
}
\arguments{
\item{covmat}{The original variance-covariance matrix}

\item{nu}{The inflation factor for the variances}

\item{except}{Character value containing the column for which you want to
keep an informative prior (options).  This needs to match a column name of
the variance-covariance matrix.}
}
\value{
A rescaled, less-informative variance-covariance matrix
}
\description{
Given a candidate prior variance-covariance matrix, this function
multiplies all, with the possible exception of the column/row corresponding
to the column/row passed in the "except" parameter.  The off-diagonal elements
of that row/column are multiplied by sqrt(nu).  This makes sense when you want
(basically) non-informative priors for the vast majority of parameters but
need to have an informative prior on a single parameter.
}

