#Sarap i�indeki maddelerin k�t�phanesini kullanarak SOM �rne�i
library(kohonen)
data(wines)
set.seed(7)

#Som �zgaras� olu�turulmas�.
sommap <- som(scale(wines), grid = somgrid(2, 2, "hexagonal"))

## Gruplama olu�tur
groups<-3
som.hc <- cutree(hclust(dist(sommap$codes[[1]])), groups)

#�izdir
plot(sommap, type="codes", bgcol=rainbow(groups)[som.hc])

#Bulutlar aras� s�n�r� ekle.
add.cluster.boundaries(sommap, som.hc)
