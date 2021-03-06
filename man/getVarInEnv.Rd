% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/defaultVarInfoHelpers.R
\name{getVarInEnv}
\alias{getVarInEnv}
\title{Get variable from environment}
\usage{
getVarInEnv(name, env)
}
\arguments{
\item{name}{The name of the variable}

\item{env}{The environment in which to evaluate}
}
\value{
Returns the value of the variable or a representation of a promise as returned by \code{getPromiseVar}
}
\description{
Is basically a wrapper for \code{get(name, envir=env)}, but does not forces promises.
}
