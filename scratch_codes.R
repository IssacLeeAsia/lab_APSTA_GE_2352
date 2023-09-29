# setting and lets use a simple data x
n=50
x <- c(1,2,3,4,9,5,4,4,5,5,1,2,4,7,5,3,6,4,6,5,3,4,7,9,13,7,5,4,3,2,1)

# find the range of the dataset
rng <- range(x)
print( rng)

# compute the difference in the range
diff(rng)

# setting up a grid point
x.grid <- seq(from=rng[1], 
              to=rng[2], 
              length=n)

#look at the grid
x.grid 
#look at the grid on x-axis
plot(x.grid,rep(0,length(x.grid)),pch=3,cex=.8,col=2,xlim=c(-1,15),xlab='x',ylab='y')
abline(h=0,col=8);abline(v=0,col=8) #actual axes

# set fraction of data in each boxcar:
frac=0.5

#walk through some of the grid points, and look left and right, based on frac:

# find the range of the dataset
rng <- range(x)
print(rng)

# compute the difference in the range
diff(rng)

#set a left start point and right end point centered on x.grid[1], with size based on rng and frac:

boxCarLength <- frac*diff(rng)
boxCarLength

#this is the size of the box on either side of the center (point of evaluation)
halfBoxCarLength <- boxCarLength/2
halfBoxCarLength

leftPt <- x.grid[1] - halfBoxCarLength
rightPt <- x.grid[1] + halfBoxCarLength

#look at the boxcar
plot(x.grid,rep(0,length(x.grid)),pch=3,cex=.8,col=2,xlim=c(-7,15),xlab='x',ylab='y')
abline(h=0,col=8);abline(v=0,col=8) #actual axes
rect(leftPt,-0.25,rightPt,.25,col=3,lwd=2,density=0)

#add a boxcar for x.grid[15], then xgrid[30]
leftPt <- x.grid[15] - halfBoxCarLength
rightPt <- x.grid[15] + halfBoxCarLength
rect(leftPt,-0.25,rightPt,.25,col=4,lwd=2,density=0)

leftPt <- x.grid[30] - halfBoxCarLength
rightPt <- x.grid[30] + halfBoxCarLength
rect(leftPt,-0.25,rightPt,.25,col=6,lwd=2,density=0)

#consider changing the size of the boxcar (change frac and re run)

