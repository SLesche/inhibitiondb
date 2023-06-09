% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_to_db.R
\name{connect_to_db}
\alias{connect_to_db}
\title{Connect to a SQLite database}
\usage{
connect_to_db(path_to_db)
}
\arguments{
\item{path_to_db}{The path to the SQLite database file.}
}
\value{
A database connection object.
}
\description{
This function establishes a connection to a SQLite database file located at the specified path using the DBI and RSQLite packages.
}
\examples{
# Connect to a SQLite database file named "mydb.db" in the current working directory
connection <- connect_to_db("mydb.db")

}
