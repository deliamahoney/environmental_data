require("here")
here()
dat_habitat = read.csv(here("data", "dahab.sta.csv"))

elev = dat_habitat$elev
slope = dat_habitat$slope
aspect = dat_habitat$aspect
basal = dat_habitat$ba.tot

hist(elev,
     main = "Elevation Histogram",
     xlab = "Elevation in Meters",
     ylab = "Frequency")
hist(slope,
     main = "Slope Histogram",
     xlab = "Slope Percentage",
     ylab = "Frequency")
hist(aspect,
     main = "Aspect Histogram",
     xlab = "Aspect in Degrees",
     ylab = "Frequency")

par(mfrow = c(1, 3))
hist(elev)
hist(slope)
hist(aspect)

plot(elev, basal, 
     main = "Elevation x Basal Area",
     xlab = "Elevation in Meters",
     ylab = "Tree Cover in M^2 per ha")
plot(slope, basal, 
     main = "Slope x Basal Area",
     xlab = "Slope Percentage",
     ylab = "Tree Cover in M^2 per ha")
plot(aspect, basal, 
     main = "Aspect x Basal Area",
     xlab = "Aspect in Degrees",
     ylab = "Tree Cover in M^2 per ha")

dce = mean(elev)
dcs = mean(slope)
dca = mean(aspect)
dcb = mean(basal)

points(x = dce, y = dcb, col = "red")
points(x = dcs, y = dcb, col = "blue")
points(x = dca, y = dcb, col = "orange")

curve(
        line_point_slope(
                x, 
                dce, 
                dcb,
                0.05),
        add = TRUE, col = "red")

curve(
        line_point_slope(
                x, 
                dcs, 
                dcb,
                0.2),
        add = TRUE, col = "blue")

curve(
        line_point_slope(
                x, 
                dca, 
                dcb,
                0.05),
        add = TRUE, col = "orange")
