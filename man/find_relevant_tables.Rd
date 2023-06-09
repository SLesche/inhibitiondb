% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_relevant_tables.R
\name{find_relevant_tables}
\alias{find_relevant_tables}
\title{Find relevant tables based on column name}
\usage{
find_relevant_tables(conn, column_name, info = NULL)
}
\arguments{
\item{conn}{The connection object or database connection string.}

\item{column_name}{The name of the column to search for in the database tables.}

\item{info}{Optional. The information data frame obtained from \code{get_column_names()} function.
If not provided, it will be obtained within the function.}
}
\value{
A character vector containing the names of the relevant tables.
}
\description{
This function finds the relevant database tables that contain a specified column.
}
\examples{
# Find relevant tables
my_conn <- DBI::dbConnect(RSQLite::SQLite(), ":memory:")
DBI::dbExecute(my_conn, "CREATE TABLE table1 (id INTEGER PRIMARY KEY, name TEXT)")
DBI::dbExecute(my_conn, "CREATE TABLE table2 (id INTEGER PRIMARY KEY, age INTEGER)")
tables <- find_relevant_tables(conn = my_conn, column_name = "id")
tables
}
