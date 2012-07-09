\name{plotPNG}
\alias{plotPNG}
\title{ Routine to generate PNG plots using the Diversity Assay Analysis Tool }
\description{
\code{plotPNG} uses various passed input, output and analysis parameters 
for performing an analysis on the data from an HIV Diversity Assay.  The 
data consists of fluorescence measures, the analysis identifies candidate 
melting temperatures, peak changes in fluorescence and other statistics as 
they relate to the data.  A PNG showing the fluorescence and dFluorescence
curves together with the identified points for T1, T2 and Tm is generated for
each sample.  Parameters are listed below (default values are in parenthesis).
}
\usage{
plotPNG(dir,
	singleFile,
	selectList,
	sampleMask,
	theta1=50,
	theta2=30,
	excludeEarly,
	earlyCutoff,
	excludeLate,
	lateCutoff,
	includeShoulders,
	showFlorSmooth,
	showDFlorSmooth,
	shoulderCutoff,
	t1Cutoff,
	t2Cutoff,
	t1SlopeWindow,
	t2SlopeWindow,
	xrangeOverride,
	xrangemin,
	xrangemax,
	progressFunc)
}
\arguments{
\item{dir}{ directory containing desired ABT/FLO files (required)}
\item{singleFile}{ a single file in that directory (for just one file) }
\item{selectList}{ a list of samples to plot (searched for in the file or files above), the default is to do all }
\item{sampleMask}{ a full or partial sample name or regular expression used to select individual samples }
\item{theta1}{ T1 cutoff angle (50 deg) }
\item{theta2}{ T2 cutoff angle as absolute value (30 deg) }
\item{excludeEarly}{ exclude peaks before main peak (T)}
\item{earlyCutoff}{ spacing required for exclusion (3 deg C)}
\item{excludeLate}{ exclude peaks after main peak (F)}
\item{lateCutoff}{ spacing required for exclusion (3 deg C) }
\item{includeShoulders}{ include premature shoulders in rising curve (T)}
\item{shoulderCutoff}{ fractional height at which to start inclusion (0.1)}
\item{showFlorSmooth}{ flag to enable drawing of smoothing curve for Florescence plot (F)}
\item{showDFlorSmooth}{ flag to enable drawing of smoothing curve for dFlorescence plot (T)}
\item{t1Cutoff}{ delta temp that Theta 1 must be exceeded for T1 candidates (1 deg C)}
\item{t2Cutoff}{ delta temp that Theta 2 must be exceeded for T2 candidates (1 deg C)}
\item{t1SlopeWindow}{ Interval used to approximate slope at T1 (1 deg C) }
\item{t2SlopeWindow}{ Interval used to approximate slope at T2 (1 deg C) }
\item{xrangeOverride}{ Option to override x-axis range (FALSE)}
\item{xrangemin}{ Value to use as override to x-axis min (75)}
\item{xrangemax}{ Value to use as override to x-axis min (100)}
\item{progressFunc}{ Optional function to call during processing passing it the fraction complete as a real }

}
\author{ David Swan \email{dswan@fhcrc.org}}
\keyword{ programming }
