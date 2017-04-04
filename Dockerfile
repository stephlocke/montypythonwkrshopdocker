FROM rocker/tidyverse
MAINTAINER Steph Locke <steph@itsalocke.com>
RUN installGithub.r lockedata/TextAnalysis
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/d41a2e6a0987ed6deeab503f978553a667c9b462/users.txt
CMD newusers < users.txt 