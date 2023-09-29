# Generate data
set.seed(2021)
x <- rnorm(500)

# plot
par(mfrow = c(1, 2))
# histogram
hist(x, freq = FALSE, main = "Histogram and density")
# Calculate density
dx <- density(x)
# Add density
lines(dx, lwd = 2, col = "red")
# Plot the density without histogram
plot(dx, lwd = 2, col = "red",
     main = "Only density plot")

# Add the data-points with noise in the X-axis
rug(jitter(x))

# Generate data
set.seed(2021)
x <- rnorm(500)

# plot
par(mfrow = c(1, 2))
# histogram
hist(x, freq = FALSE, main = "Histogram and density")
# Calculate density
dx <- density(x)
# Add density
lines(dx, lwd = 2, col = "red")
# Plot the density without histogram
plot(dx, lwd = 2, col = "red",
     main = "Only density plot")

# Add the data-points with noise in the X-axis
rug(jitter(x))

# Generate data
set.seed(2021)
x <- rbinom(100,101,p=.7)

# plot
par(mfrow = c(2, 2))
plot(density(x, bw = 30), lwd = 2,
     col = "red", main = "Big bandwidth (oversmooth)")
plot(density(x, bw = 0.1), lwd = 2,
     col = "red", main = "Small bandwidth (undersmooth)")
plot(density(x, bw = 1), lwd = 2,
     col = "red", main = "Medium bandwidth (good)")
plot(density(x), lwd = 2,
     col = "red", main = "Default bandwidth (good)")

