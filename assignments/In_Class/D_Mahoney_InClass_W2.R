data(iris)
plot(x = iris$Sepal.Width, y = iris$Sepal.Length)
data_center_x = mean(iris$Sepal.Width)

data_center_y = mean(iris$Sepal.Length)

points(x = data_center_x, y = data_center_y, col = "red")

curve(
  line_point_slope(
    x, 
    data_center_x, 
    data_center_y,
    8), col = "red",
  add = TRUE)
plot(
  x= iris$Sepal.Width,
  y= iris$Sepal.Length,
  main= "Delia Mahoney Iris Plot",
  xlab= "Sepal Width",
  ylab= "Sepal Length",
)



