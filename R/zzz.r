.First.lib <- function(lib, pkg)
{
require("stats",quietly=TRUE,warn.conflicts=FALSE)
require("utils",quietly=TRUE,warn.conflicts=FALSE)
ver <- packageDescription("pgam")[c("Version")]
cat(paste("This is pgam library version",ver,"\n",sep=" "))
library.dynam("pgam","pgam")
}


.Last.lib <- function(libpath)
{
# unloading process 
library.dynam.unload("pgam",libpath)
}
