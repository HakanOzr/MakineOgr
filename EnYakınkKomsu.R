library(caret)
data(iris)
# Modeli olu�tur ( Fit etmek )
fit <- knn3(Species~., data=iris, k=5)
# Konsolda g�ster ( Summary etmek )
summary(fit)
# Tahminlemeyi yap.
predictions <- predict(fit, iris[,1:4], type="class")
# Tabloyu olu�tur.
table(predictions, iris$Species)

