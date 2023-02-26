print("Welcome To Pizzarockie")
print("Hello There!!")


#q1
print("What is your name?")
cus_name <- readLines(con="stdin",n=1)
print(paste("Hi",cus_name))

#q2

print("What do you want to order today?")
print("1. hawaiiian 2. cheeze 3. peperoni")

action <- readLines(con="stdin",n=1)

if(action == "1"){
  print("Hawaiian")
}else if(action == "2"){
  print("Cheeze")
}else{
  print("Pepperoni")
}

print("What size do you want?")
print("1. Large 2. Mediam 3. Small")

size <- readLines(con="stdin",n=1)
if(size == "1"){
  print("Large")
}else if(size == "2"){
  print("Mediam")
}else{
  print("Small")
}
#q3
print("Do you want Thin crust or deep dish")
print("1. Thin crust 2. Deep dish")

v3 <- readLines(con="stdin",n=1)
if(v3 == "1"){
  print("Thin Crust")
}else{
  print("Deep dish")
}
#q4
print("Do you have any food allergies?")
print("1. Yes 2. No")

v4 <- readLines(con="stdin",n=1)

if(v4 == 1){
  writeLines("Yes\n","What are you allergic to?\n")
  print("1. Seafood 2. Vegetable")
}else{
  print("No")
}
#q5

#print("What are you allergic to?")
#print("1. Seafood 2. Vegetable")
if(v4 == 1){ 
  v5 <- readLines(con="stdin",n=1)
  if(v5 == 1){
    print("Seafood")
  }else{
    print("Vegetable")
  }
}


if(size == "1"){
  cost = 295
}else if(size == "2"){
  cost = 195
}else{
  cost = 95
}


if(action==1){
  actionp <- "Hawaiiian"
}else if(action == 2){
  actionp <- "Cheeze"
}else{
  actionp <- "Pepperoni"
}
  
  
if(size==1){
  sizep <- "Large"
}else if(size == 2){
  sizep <- "Mediam"
}else{
  sizep <- "Small"
}  
  
if(v3==1){
  v3p <- "Thin Crust"
}else{
  v3p <- "Deep dish"
}    



#dialog 6

print("Let me repeat your order")
#dialog 7

print(paste("Your order is",actionp,sizep,v3p))
#dialog 8

print(paste("Your order is",cost,"Baht"))
#dialog 9
print("Will you pay with cash or credit card")

print("1.Cash 2. Credit Card")
method <- readLines(con="stdin",n=1)

if(method == "1"){
  print("Cash")
}else{
  print("Credit Card")
}

print("Thank you for your order😊 your order will be arrive soon.")