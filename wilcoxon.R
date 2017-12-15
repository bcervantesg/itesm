databasesall = read.csv("~/databases/databases120.csv")
binary= databasesall$classes ==2
loet10all = databasesall$atributes <=10
b11a100 = ((databasesall$atributes >10) & (databasesall$atributes <=100))
all = rep(TRUE,120)
bool = all
setwd("~/ProcessedOutput/")
A = read.csv("PRFW10/120/Exp3aFW10RP100AcC.csv") #RF
B = read.csv("UniformTree/Exp3aFW100ACC.csv") #INC

idA = "RP100"
idB = "RFUT100"

for (measure in c("Q","QP","H","HP","G","GP")){
  print(paste0('----',measure,'----'))
  wL = wilcox.test(A[[paste0(idA,measure)]][bool],B[[paste0(idB,measure)]][bool],paired = TRUE, alternative = "less")
  sig = ""
  if (wL$p.value < 0.05){ sig = "*** "}
  print(paste0(wL$p.value,sig))
  
}

for (measure in c("Q","QP","H","HP","G","GP")){
  print(measure)
  x = sum(A[[paste0(idA,measure)]][bool]-B[[paste0(idB,measure)]][bool] <= 0)
  print(x/sum(bool))
  print(1-x/sum(bool))
}

rank(c(100-colSums(B[bool,-1]),100-colSums(A[bool,-1])))
