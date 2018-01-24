
.onAttach <- function(libname,pkgname)
{
#require("stats",character.only=TRUE,quietly=TRUE,warn.conflicts=FALSE)
#require("utils",character.only=TRUE,quietly=TRUE,warn.conflicts=FALSE)
ver <- utils::packageDescription(pkgname,fields="Version")
packageStartupMessage(paste(pkgname,ver,sep=" "))
}

.onLoad <- function(libname,pkgname)
{
library.dynam("pgam",pkgname,libname)
}

.onUnload <- function(libpath)
{
# unloading process 
library.dynam.unload("pgam",libpath)
}
