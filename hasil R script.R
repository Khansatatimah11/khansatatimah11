setwd('C:/Users/LENOVO/Documents/SMT 3/UAS Metopen')
library(readxl)
dat<-read_excel('data uas.xlsx')
library(tidyverse)
library(dplyr)
ggplot()
ggplot(data = dat, aes(x = harga, y = konsumsi)) + 
  geom_point() + 
  labs(title = "Gambar 1. Hubungan Antara Harga Beras dengan Konsumsi Beras",
         x = "Harga Beras",
         y = "Konsumsi",
         caption = "sumber: Badan Pusat Statistik") + 
  theme_classic()
reg1<-lm(data=dat,y~x)
View(reg1)
summary(reg1)
