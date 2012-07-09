\name{DivMelt_gui}
\alias{DivMelt_gui}
\title{ User Interface for the Diversity Assay Analysis Tool }
\description{
\code{DivMelt_gui} uses tcl/tk to allow the user to set various input, output,
plotting and analysis parameters for performing an analysis on the data 
from a Diversity Melting Assay.  The data consists of fluorescence measures, 
the analysis identifies candidate melting temperatures, peak changes in 
fluorescence and other statistics as they relate to the data.
}
\usage{
DivMelt_gui()
}
\author{ David Swan \email{dswan@fhcrc.org}}
\examples{
##
library (DivMelt)
DivMelt_gui()
}
\keyword{ interface }
