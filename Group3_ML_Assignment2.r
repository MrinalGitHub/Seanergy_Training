data() 
data(airquality) 
names(airquality) 
attach(airquality) 
plot(Ozone~Solar.R) 
plot(Ozone~Solar.R,data=airquality) 
 


#calculate mean ozone concentration (na´s removed) 
mean.Ozone=mean(airquality$Ozone,na.rm=T) 
 

abline(h=mean.Ozone) 
 

 #use lm to fit a regression line through these data: 
 

 model1=lm(Ozone~Solar.R,data=airquality) 
 
 #Adjusted R-squared
 summary(model1)

 #Intercept 
 model1 

 predict(model1,data.frame(Solar.R=12)) 
 

 abline(model1,col="red") 
 
 plot(model1) 
 
 termplot(model1) 

 
 
 
 model2=lm(Ozone~Solar.R+Wind+Temp,data=airquality)

 model2 
 
 summary(model2)
 
 
 predict(model2,data.frame(Solar.R=40,Wind=30,Temp=25))
 
 plot(model2) 
 
 termplot(model2) 
 
 
 
 
 #  1) Mode11: Calculate R-squared value based on Solar.R column
 #  Conclusion: We rejected Model1 because Adjusted R-squared value is 0.1133 and go for Model2
 
 #  2) Model2:Calculate R-squared value based on Solar.R and Wind and Temp columns
 #  Conclusion: We accepted Model2 because Adjusted R-squared value is 0.5948
