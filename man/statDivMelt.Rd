\name{statDivMelt}
\alias{statDivMelt}
\title{ Statistical Output for the Diversity Assay Analysis Tool }
\description{
\code{statDivMelt} uses various passed input, output and analysis parameters 
to performing a statistical analysis of the data from an HIV Diversity Assay.  The 
data consists of fluorescence measures, the analysis identifies charateristics
such as minimum, maximum and average flurescence and dFluoresence.  These 
statistics can be used to generate training data for a linear regression model 
which can be used in order to reject bad data files in future analysis.
Parameters are listed below (default values are in parenthesis).
}
\usage{
statDivMelt(dir,
	singleFile,
	selectList,
	theta1=50,
	theta2=30,
	excludeEarly,
	earlyCutoff,
	excludeLate,
	lateCutoff,
	includeShoulders,
	shoulderCutoff,
	t1Cutoff,
	t2Cutoff,
	t1SlopeWindow,
	t2SlopeWindow,
	statsFile)
}
\arguments{
\item{dir}{ directory containing desired ABT/FLO files (required)}
\item{singleFile}{ a single file in that directory (for just one file) }
\item{selectList}{ a list of samples to plot (searched for in the file or files above), the default is to do all }
\item{theta1}{ T1 cutoff angle (50 deg) }
\item{theta2}{ T2 cutoff angle as absolute value (30 deg) }
\item{excludeEarly}{ exclude peaks before main peak (T)}
\item{earlyCutoff}{ spacing required for exclusion (3 deg C)}
\item{excludeLate}{ exclude peaks after main peak (F)}
\item{lateCutoff}{ spacing required for exclusion (3 deg C) }
\item{includeShoulders}{ include premature shoulders in rising curve (T)}
\item{shoulderCutoff}{ fractional height at which to start inclusion (0.1)}
\item{t1Cutoff}{ delta temp that Theta 1 must be exceeded for T1 candidates (1 deg C)}
\item{t2Cutoff}{ delta temp that Theta 2 must be exceeded for T2 candidates (1 deg C)}
\item{t1SlopeWindow}{ Interval used to approximate slope at T1 (1 deg C) }
\item{t2SlopeWindow}{ Interval used to approximate slope at T2 (1 deg C) }
\item{statsFile}{ File to which to write statistics like mean, max, etc. - used to help make a Lasso model training set }
}
\author{ David Swan \email{dswan@fhcrc.org}}
\keyword{ programming }
