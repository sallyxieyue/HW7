#! /usr/bin/Rscript

installed_pkgs <- row.names(installed.packages())
pkgs <- c("tidyverse","data.table","ggplot2")
for(p in pkgs){
  if(!(p %in% installed_pkgs)){
    install.packages(p)
  }
}

