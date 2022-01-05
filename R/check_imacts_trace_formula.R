#  data(boston, package="spData")
#  Wb <- as(spdep::nb2listw(boston.soi), "CsparseMatrix")
#  ev <- eigen(Wb)$values
#  trMatb <- spatialreg::trW(Wb, type="mult")
# lag1 <- spreg(log(CMEDV) ~ CRIM + ZN + INDUS + CHAS, 
#                  data = boston.c, listw = Wb, model = "lag")
# lag1 <- spatialreg::lagsarlm(log(CMEDV) ~ CRIM + ZN + INDUS + CHAS, 
#               data = boston.c, listw = spdep::nb2listw(boston.soi))
# summary(lag1)
# 
# 
# 
# 
# impacts(lag1, KPformula = TRUE)
# impacts(lag1, KPformula = TRUE, tr = trMatb)
# lambda <- coefficients(lag1)[length(coefficients(lag1))]
# lambda <- 0.2
# tr_G <- sum(1/(1-lambda*ev))
# powl <- vector("numeric", length = 30)
# for(i in 1:30) powl[i] <-  lambda^i
# trg <- 100 +sum(trMatb * powl)
# trg
