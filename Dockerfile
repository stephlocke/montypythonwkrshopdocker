FROM rocker/tidyverse
MAINTAINER Steph Locke <steph@itsalocke.com>
RUN installGithub.r lockedata/TextAnalysis
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/a82d2a516b8c8738013b42d0a19bc58d1142cd8d/mkusers.sh /
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/6d967c19d9c73cecd1e2d4da0eed2cd646790bd5/users.csv /
RUN chmod 777 /mkusers.sh
RUN /mkusers.sh