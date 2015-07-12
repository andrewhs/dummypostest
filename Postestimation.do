**Logistic Regression Example with Post-Estimation Results

clear all
set more off
use http://www.stata-press.com/data/r12/nlswork2.dta
describe

drop if ln_wage>1
glm ln_wage tenure age grade nev_mar wks_ue ttl_exp, family(binomial) link(logit) vce(robust)

*Predict y variable
predict mu

*Predict anscombe residuals 
predict anscombe

*Predict deviance residuals
predict deviance

*Scatterplot of Residuals vs prediction
scatter mu anscombe




*Predict cook's standard deviation
predict cooksd

list mu anscombe

