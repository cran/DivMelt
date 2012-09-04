\name{modelDivMelt}
\alias{modelDivMelt}
\title{ Routine to generate LASSO model for the Diversity Assay Analysis Tool }
\description{
\code{modelDivMelt} uses the provided training set data to generate and save a 
LASSO model for linear regression analysis on future samples.  The training set 
must be a comma separated file with the following columns:

    Sample,min,max,mean,stddev,sigma,dmin,dmax,dmean,dstddev,positive

where:

    Sample = sample name

    min,max,mean and stddev - those measures w.r.t. fluorescence

    sigma - sigma from linear model of fluorescence

    dmin,dmax,dmean and dstddev - those measures w.r.t. delta fluorescence

    positive - 0 if rejected (negative control), 1 if accepted

The output file is written as an R object.  The default filename is model.rda.
}
\usage{
modelDivMelt( trngFile, datFile)
}
\arguments{
\item{trngFile}{ CSV file representing training set samples (required) }
\item{datFile}{ name of output model file (model.rda by default)}
}
\author{ David Swan \email{dswan@fhcrc.org}}
\examples{
library (DivMelt)
pkgDir<-system.file(package="DivMelt")
modelDivMelt(trngFile=paste(pkgDir,"/sample_data/training.csv",sep=''),datFile="new_model.rda")
}
\keyword{ utilities }
