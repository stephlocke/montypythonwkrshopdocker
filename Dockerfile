FROM rocker/rstudio
MAINTAINER Steph Locke <steph@itsalocke.com>
CMD wget https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/d41a2e6a0987ed6deeab503f978553a667c9b462/users.txt
CMD newusers < users.txt 
CMD Rscript -e "install.packages('tidyverse', repos = 'https://cran.rstudio.com')"
CMD Rscript -e "devtools::install_github('lockedata/textanalysis')"