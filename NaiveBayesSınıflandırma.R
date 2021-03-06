library(e1071)
data(iris)
# Modeli olu�tur ( fit etmek )
fit <- naiveBayes(Species~., data=iris)
# �zeti g�ster ( Summary )
summary(fit)
# Tahminlemeyi yap.
predictions <- predict(fit, iris[,1:4])
# Sonucu G�ster.
table(predictions, iris$Species)
