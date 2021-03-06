x=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
y=c(3,4,5,4,8,10,10,11,14,20,23,24,32,34,35,37,42,48,53,60)

#DataFrame olu�turduk.
train=data.frame(x,y)

#Ekrana �izdirdik.
plot(train,pch=16)

#Lineer Regresyon algoritmas�n� �al��t�rd�k.
model <- lm(y ~ x, train)

#Ekrana tekrar �izdirdik.
abline(model)

#SVM i�in gerekli olan k�t�phane varsay�lan de�ildir indirmeniz gerekir.
library(e1071)

#SVM fonksiyonunu �al��t�rd�k lineer regresyonla ayn� syntaxda.
model_svm <- svm(y ~ x , train)

#Tahminlemeyi yapt�k.
pred <- predict(model_svm, train)

#Ekranda tahminlemeleri g�ster.
points(train$x, pred, col = "blue", pch=4)
