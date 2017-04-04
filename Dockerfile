FROM rocker/tidyverse
MAINTAINER Steph Locke <steph@itsalocke.com>
RUN installGithub.r lockedata/TextAnalysis
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/4f6ff668d909ad55f2b1d176ff63935c8a09bbe5/mkusers.sh /
ADD https://gist.githubusercontent.com/stephlocke/0036331e7a3338e965149833e92c1360/raw/4f6ff668d909ad55f2b1d176ff63935c8a09bbe5/users.csv /
RUN /mkusers.sh