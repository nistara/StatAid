% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Functions.R
\name{regression_table_multi}
\alias{regression_table_multi}
\title{All-in-one publication ready regression table for glm models
This function output a publication-ready regression table from a dataset. Each column of the dataset is included as a x variable in a multivariate model.}
\usage{
regression_table_multi(data, y_var, family = "gaussian")
}
\arguments{
\item{data}{A dataframe with row corresponding to samples/patients and columns to variables.}

\item{y_var}{A character string corresponding to the y variable.}

\item{family}{Generalized linear model family (gaussian or binomial)}
}
\description{
All-in-one publication ready regression table for glm models
This function output a publication-ready regression table from a dataset. Each column of the dataset is included as a x variable in a multivariate model.
}
