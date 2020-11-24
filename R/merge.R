#! /usr/bin/Rscript

library(tidyverse)
library(data.table)
load("raw_data/births_s.RData")
load("raw_data/NH4.Rdata")

NH4$tract_date<-NH4$Data
setDT(births_s)
setDT(NH4)

testi<-NH4[births_s, on=.(Tract==CENSUS, Data >= conception_date, Data<=BIRTHDATE)]
setnames(testi, "Data", "conception_date")
setnames(testi, "Data.1", "BIRTHDATE")

testi[,`:=` (t1.avg = mean(NH4[tract_date >= conception_date & tract_date < conception_date + (7*11)], na.rm = TRUE),
             t2.avg = mean(NH4[tract_date >= conception_date + (7*11) & tract_date < conception_date + (7*24)], na.rm = TRUE),
             t3.avg = mean(NH4[tract_date >= conception_date + (7*24) & tract_date <= BIRTHDATE], na.rm = TRUE),
             total.avg = mean(NH4)), 
      by = ID_1]
save(testi,file="merged_data/testi.RData")
