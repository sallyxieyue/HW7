#! /usr/bin/docker
FROM rocker/tidyverse


# install R packages like this
# put as close to top of script as possible to make best 
# use of caching and speed up builds
RUN Rscript -e "install.packages(c('ggplot2','data.table','tidyverse'))"

# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /HW7
RUN mkdir /HW7/output


# copy contents of local folder to project folder in container
COPY ./ /HW7/

# make R scripts executable
RUN chmod +x /HW7/R/*.R

# make report
CMD make -C HW7 report
