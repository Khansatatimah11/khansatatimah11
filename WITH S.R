setwd("C:/Users/LENOVO/Documents/SMT 3/UAS Metopen")
library(readxl)
data_uasS <- read_excel("C:/Users/LENOVO/Documents/SMT 3/UAS Metopen/data uasS.xlsx")
reg1 <- lm(y ~ x + S, data = data_uas)
summary(reg1)
Call:
  lm(formula = y ~ x + S, data = data_uas)

Residuals:
  Min      1Q  Median      3Q     Max 
-576.31  -45.98   23.73   89.11  381.73 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept) 2.538e+04  1.266e+03  20.048 1.92e-07 ***
  x           1.014e-01  9.457e-02   1.072  0.31922    
S           4.983e-05  9.718e-06   5.128  0.00136 ** 
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 290.1 on 7 degrees of freedom
Multiple R-squared:  0.797,	Adjusted R-squared:  0.739 
F-statistic: 13.74 on 2 and 7 DF,  p-value: 0.003767

data_uas$m<-resid(reg1)
plot(dat$x,dat$m,xlab="Harga Beras",ylab="error")
abline(h=0) 

