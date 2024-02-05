#ex 1
a <- 10
b = 5
resultat = a*b
print(resultat)
A = 7.2
B = 10.1
resultats = A+B
print(resultats)
rm(a,b,A,B,resultat,resultats)

#ex 2
v = seq(1,5,1)
print(v[3])
v1 = seq(1,5,1)
v2 = v1+3
v3 = seq(1,6,1)
v4 = v3**2
v5 = v4/2
v6 = c("lundi","mardi","mercredi","jeudi","vendredi","samedi","dimanche")
v6[c(2,7)]
v7 = c(TRUE,FALSE,TRUE)
class(v7)
v8=c(10.1,10.2)
class(v8)
v9 = c("j","f","m","a","mai","juin")
class(v9)
v9[(seq(1,3,1))]
v10 = seq(-10,-1,1)
class(v10)
v10[c(1,10)]
v11 = c("pomme", "poire", "fraise", "coco")
class(v11)
v12 = c(10,NA,2,5)
class(v12)
#fonction c , seq , length
b = seq(1,10,1)
length(b)
b2 = seq(2,20,2)
length(b2)
b3 = seq(0,-5,-1)
length(b3)
b4 = seq(5,50,5)
length(b4)
b5 = seq(10,1,-1)
length(b5)
b6 = seq(0,1,0.1)
length(b6)
b7 = seq(5,-5,-1)
length(b7)
b8 = seq(1,10,2)
length(b8)
#fonction rep
c1 = rep(3,5)
c2 = rep(c("A","B","C"),3)
c3 = rep(seq(1,3,1),3)
c4 = rep(c(TRUE,FALSE),3)
rm(list=ls())
#ex 3
d1 = runif(n = 10 ,min = 0 , max = 1)
d2 = rnorm(n = 2000, mean = 0, sd = 1)
