\name{ccOptions-class}
\Rdversion{1.1}
\docType{class}
\alias{ccOptions-class}
\alias{ccOptions}
\alias{compareColors,ccOptions-method}
\alias{compareColors<-,ccOptions-method}
\alias{compareIndx,ccOptions-method}
\alias{compareNames,ccOptions-method}
\alias{compareNames<-,ccOptions-method}
\alias{cssClass,ccOptions-method}
\alias{listNames,ccOptions-method}
\alias{listNames<-,ccOptions-method}
\alias{outType,ccOptions-method}
\alias{outType<-,ccOptions-method}
\alias{compareColors}
\alias{compareColors<-}
\alias{compareIndx}
\alias{compareNames}
\alias{compareNames<-}
\alias{cssClass}
\alias{outType}
\alias{outType<-}

\title{Class "ccOptions"}
\description{
These objects store the various options required by categoryCompare for actually making comparisons and generating output.
}
\section{Objects from the Class}{
Objects can be created by calls of the form \code{new("ccOptions", listNames=c('list1','list2',etc))}.
This is the minimum call required, and will generate a \code{ccOptions} object where comparisons are assumed between all the lists supplied. See the examples section for more examples of how to initialize new objects.
}
\section{Slots}{
  \describe{
    \item{\code{listNames}:}{Object of class \code{"character"} The actual names of the various datasets defined in the \code{ccData} object }
    \item{\code{compareNames}:}{Object of class \code{"character"} Which lists to compare, each entry should be a comma separated list }
    \item{\code{compareIndx}:}{Object of class \code{"list"} List indices for each of the comparison, not usually set by the user. Generated automatically. }
    \item{\code{compareColors}:}{Object of class \code{"character"} For graphical and tabular output each comparison can be colored. Should be one color for each comparison. Can be either an \code{n} by 3 matrix of rgb triples, or a character vector of hexadecimal color codes, or character vector of color names ('red','green','blue', etc) }
    \item{\code{cssClass}:}{Object of class \code{"character"} Classnames used when generating HTML tables to color entries. Generated automatically upon initialization, or modifying \code{compareNames} }
    \item{\code{outType}:}{Object of class \code{"character"} Sets the type of output generated by \code{ccTables}. Valid types are "html", "text", "rcytoscape" or "none", default is "text" when the \code{ccOptions} object is initialized without an \code{outType} specified. }
  }
}
\section{Methods}{
  \describe{
    \item{compareColors}{\code{signature(object = "ccOptions")}: ... }
    \item{compareColors<-}{\code{signature(object = "ccOptions")}: ... }
    \item{compareIndx}{\code{signature(object = "ccOptions")}: ... }
    \item{compareNames}{\code{signature(object = "ccOptions")}: ... }
    \item{compareNames<-}{\code{signature(object = "ccOptions")}: ... }
    \item{cssClass}{\code{signature(object = "ccOptions")}: ... }
    \item{listNames}{\code{signature(object = "ccOptions")}: ... }
    \item{listNames<-}{\code{signature(object = "ccOptions")}: ... }
    \item{outType}{\code{signature(object = "ccOptions")}: ... }
    \item{outType<-}{\code{signature(object = "ccOptions")}: ... }
	 }
}

\author{
Robert M Flight
}

\examples{
showClass("ccOptions")
## A very basic "ccOptions" for a comparison of two sets of data, "list1" and "list2"
c1 <- new("ccOptions", listNames=c('list1','list2'))
c1

## Now lets get a little more complicated
c1 <- new("ccOptions", listNames=c('list1','list2'), compareNames=c('list1,list2','list1,list3'), compareColors=c('red','blue'))
c1

# set the type of output you want to eventually produce
c1 <- new("ccOptions", listNames=c('list1','list2'), outType='html')
c1

c1 <- new("ccOptions", listNames=c('list1','list2'), outType=c('html','text','none'))
c1

## Using RGB colors
ccCols <- matrix(c(255,0,0, 0,0,255), nrow=2, ncol=3)
ccCols <- rgb(ccCols, maxColorValue=255)
c1 <- new("ccOptions", listNames=c('list1','list2','list3'), compareNames=c('list1,list2','list1,list3'), compareColors=ccCols)

## Using Hex colors
c1 <- new("ccOptions", listNames=c('list1','list2','list3'), compareNames=c('list1,list2','list1,list3'), compareColors=c('#FF0000','#0000FF'))
c1

## or even using a color palette from R. Note that you need at least enough colors to cover all of individual and possible permutations (n!) if you use compareNames='all'
c1 <- new("ccOptions", listNames=c('list1','list2','list3'), compareNames=c('list1,list2','list1,list3'), compareColors=rainbow(4))
c1


}
\keyword{classes}
