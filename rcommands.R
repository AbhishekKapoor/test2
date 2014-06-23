Sys.which("git")
library (slidify)
slidify ("index.Rmd")
publish (user="AbhishekKapoor", repo= "test2")
author ("test2")
system('git config --global -list')

