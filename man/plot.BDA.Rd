% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot.BDA}
\alias{plot.BDA}
\title{Plot Beta Drift Analyses}
\usage{
\method{plot}{BDA}(x, single = FALSE, ...)
}
\arguments{
\item{x}{an object of class \code{BDA}.}

\item{single}{logical. If \code{TRUE}, grouping of plots by parameters is disabled.}

\item{...}{additional parameters.}
}
\description{
\code{plot.BDA} plots results from beta drift analyses.
}
\details{
\code{plot.BDA} produces three plots for each parameter of the baseline
model of the corresponding \code{BDA} function. Unless \code{single} is
set to \code{TRUE}, all three plots for a parameter are displayed in a
single plot window. 

The first plot, titled "time drift", displays the drift of the parameter
across time. In addition to the parameter itself, a 15-knot cubic smooth spline
is displayed as a light-blue dashed line. The solid horizontal red line
represents the parameter estimate of the baseline model with the 95%
confidence interval as a red-shaded area surrounding it. The solid
horizontal blue line represents the mean of the drift series.

The second plot, titled "horizon drift", displays the drift of the parameter
with respect to the estimation window size. In addition to the parameter
itself, a 5-knot cubic smooth spline is displayed as a light-blue dashed
line. The blue-shaded area represents the 95% confidence interval for the
parameters. The solid red vertical line highlights the estimation window size
of the baseline model.

The third plot, titled "jackknife", displays the outcome of the jackknife
procedure for the baseline model. The light red-shaded and dark
red-shaded areas represent p-values <0.5 and <0.75 respectively,
as implied by the baseline model.

\code{IMPORTANT NOTE}: This package was developed with the GUI
of RStudio in mind. The plotting function creates a potentially large number
of plots which can be comfortably viewed in RStudio, but require some
preparations in the standard R GUI. Start by executing \code{dev.new()}, which
opens a graphical device. Next, click the "History" tab and then click
"Recording" in the drop-down menu. If you run the plotting function now,
you can jump through the plots using the PageUp and PageDown key on your
keyboard.
}
\examples{
\dontrun{
###################################################
####             Full example                  ####
###################################################

results <- BDA(data = FFfactors, spec = (VOO~SP500),
               horizon = 250, doplot = FALSE)
plot(results)
}

###################################################
####        CRAN-compatible example            ####
###################################################

results <- BDA(data = FFfactors[nrow(FFfactors):(nrow(FFfactors)-300),], 
               spec = (VOO~SP500),horizon = 250, doplot = FALSE)
plot(results)
message("NOTE: This is a shortened example. Reference the manual for more complex examples")
}
\author{
Markus Peter Auer <mp.auer@meanerreversion.com>
}

