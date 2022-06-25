mtcars
library(graphics)
pairs(mtcars, main = "mtcars data", gap = 1/4)
coplot(mpg ~ disp | as.factor(cyl), data = mtcars,
       panel = panel.smooth, rows = 1)
## possibly more meaningful, e.g., for summary() or bivariate plots:
mtcars2 <- within(mtcars, {
  vs <- factor(vs, labels = c("V", "S"))
  am <- factor(am, labels = c("automatic", "manual"))
  cyl  <- ordered(cyl)
  gear <- ordered(gear)
  carb <- ordered(carb)
})
print(mtcars2)
summary(mtcars2)

#Calculating Mode
str(mtcars)
names(mtcars)
summary(mtcars)
mode_mpg <- names(sort(table(mtcars$mpg)))
c <- as.factor(mtcars$cyl)
str(c)
c
plot(mtcars$cyl, mtcars$mpg)
#rewrite code for mode
mode(mtcars$mpg)


sort(-table(mtcars$mpg))[1]


#deviate to learn function
###
function_name <- function(inputs) {
  output_value <- do_something(inputs)
  return(outputs_value)
}

function_name()
###


50%%24

av = 3



while(TRUE) {
  if (av == av * 1) {
    av = av + 1
    multiples_av = av
  
  }
  break
}

av

#Prove more examples of while loop



#Creating a function for LCM

# Program to find the L.C.M. of two input number
lcm <- function(x, y) {
  # choose the greater number
  if(x > y) {
    greater = x
  } else {
    greater = y
  }
  while(TRUE) {
    if((greater %% x == 0) && (greater %% y == 0)) {
      lcm = greater
      break
    }
    greater = greater + 1
  }
  return(lcm)
}
# take input from the user
num1 = as.integer(readline(prompt = "Enter first number: "))
num2 = as.integer(readline(prompt = "Enter second number: "))
print(paste("The L.C.M. of", num1,"and", num2,"is", lcm(num1, num2)))

#LCM function not perfect; redo


#Understanding while loop
z <- 5

while(z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  
  if(coin == 1) {
      z <- z +1 
  
  } else {
      z <- z - 1
  }

}

#Naming a vector

Nations <- c("Nigeria", "USA", "Canada")
Laptops <- c("Mac", "Plate", "Hp")

Nations_Laptops <- c(Nations, Laptops)
names(Nations) <- c("Mac", "Plate", "Hp")
names(Nations) <- c(Laptops)
print(Nations) 

mtcars
mtcars$wt
median()
a = c(1:5)

#understanding mean, not clear of the 100 and 1000 role)
v = (c(1:3, 100, 1000))



#plotting with boxplot
# loading library
library(ggplot2)

#creating random dataset
data <- data.frame(y=abs(rnorm(16)),
                   x=rep(c(0,100,200,300,400,
                           500,600,700),
                         each=2))

# creating the box plot
ggplot(data, aes(x, y, group=x)) +
  
  # plotting the box plot with green color
  geom_boxplot(fill="green") +
  
  # adding x-axis label
  xlab("x-axis") +
  
  # adding y-axis label
  ylab("y-axis") +
  
  # adding title
  ggtitle("Continuous Box plot ")



