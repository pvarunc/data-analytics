# Data Structures

#vectors-----
v1 = 1:100  #create vector from 1 to 100
v2 = c(1,4,5,10)   #specific numerical vector
class(v1)
class(v2)
v3 = c('a','varun','ashish')
v3  #print the vector
class(v3)
v4 = c(TRUE, FALSE, T, F, T)
class(v4)

#summary on vectors

mean(v1)
median(v1)
sd(v1)

hist(women$height)

v2
v2[v2>=5]

x = rnorm(60, mean=60, sd=10)
x
plot(x)
hist(x)
plot(density(x))
abline(v=60)
#rectangle and density together

hist(x, freq=F)
lines(density(x))

hist(x, breaks=10, col = 1:10)
length(x)
sd(x)

?sample
x1 = LETTERS[5:20]
x1

set.seed(1234)
y1 = sample(x1)
y1

set.seed(53)
(y2 = sample(x1, size = 5))

(gender=sample(c('M', 'F'), size= 60, replace=TRUE)


#matrix-----
(m1=matrix(1:24, nrow=4))
(m2=matrix(1:24, nrow=4, byrow=T))

?runif
(x=trunc(runif(60, 60, 100)))

plot(density(x))

(m4=matrix(x, ncol=6))

#function on rows and cols

colSums(m4)
rowSums(m4)
rowMeans(m4)
m4[m4>67 & m4<86]

#printing specific rowas and columns

m4[8:10, ]
m4[8:10, c(1,3,5)]
rowsum(m4[8:10, c(1,3,5)])


#data.frame
#rollno, name, gender, course, marks1, marks2
(rollno = 1:60)
(name=paste('student',1:60,sep='-'))
name[1:10]
name[15:20]
name[c(15,20,37)]

name[-c(1:10)]
rev(name)
name[-c(1:10, 30:35)] #negative filter for more than one range

(gender=sample(c('Male','Female'), size=60, replace=T, prob = c(.3,.7)))    #gender sample values


(course=sample(c('BBA','MBA','FPM'), size=60, replace=T, prob = c(.3,.5,.2)))

(marks1=ceiling(rnorm(60, mean = 65, sd=7)))
(marks2=ceiling(rnorm(60, mean = 60, sd=11)))
(grades = sample(c('A','B','C'), size=60, replace=T))
students = data.frame(rollno,name, gender, course, marks1, marks2, grades)
class(students)
summary(students)
students[, c('name')]

students[students$gender == 'Male', c('rollno', 'gender', 'marks1')]
students[students$gender == 'Male' & students$grades == 'C', c('rollno','gender','marks1')]

students[students$marks1 > 55 | students$marks1 < 75, c('name','marks1')]
students$gender
t1=table(students$gender)
barplot(table(students$course), ylim = c(0,50), col = 1:3)
text(1:3,table(students$course)+5,table(students$course))
text(1:3,table(students$course)+5,table(students$course))
str(students)
nrow(students)
names(students)
dim(students)
head(students)
tail(students)
head(students, n=7)
#avg marks scored by each gender in marks1
#gender, marks1

aggregate(students$marks1, by=list(students$gender), FUN=mean)
aggregate(students$marks2, by=list(students$course), FUN=max)
aggregate(students$marks2, by=list(students$course, students$gender), FUN=mean)

#deployer
library(dplyr)

students %>% group_by(gender) %>% summarise(mean(marks1))
students %>% group_by(course,gender) %>% summarise(mean(marks1), min(marks2), max(marks2))


























#array-----