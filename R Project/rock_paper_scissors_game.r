print("Welcome to my game rps!!!")
print("Please Enter your name")
name <- readLines("stdin",n=1)
print(paste("Welcome",name,"!!!"))

enemie <- c("Rock","Paper","Scissors")
win <- 0
lose <- 0
draw <- 0
print("Shall we begins?")
print("[1]Yes [2]No")
start <- readLines("stdin",n=1)

while(start=="1"){
  enemie_p <- sample(enemie,size=1)
  print("1.Rock 2.Paper 3.Scissors")
  rps <- readLines("stdin",n=1)
  if(rps==1){
    print("Your turn : Rock")
  }else if(rps==2){
    print("Your turn : Paper")
  }else{
    print("Your turn : Scissors")
  }
  


#win
if(rps=="1"&enemie_p=="Scissors"){
  print(paste("Enemies Turns :",enemie_p))
  print("Win")
  win <- win+1
  print("[1]continue,[2]Exit") 
  start <- readLines("stdin",n=1)
}
  
if(rps=="2"&enemie_p=="Rock"){
  print(paste("Enemies Turn :",enemie_p))
  print("Win")
  win <- win+1
  print("[1]continue,[2]Exit") 
  start <- readLines("stdin",n=1)
}

if(rps=="3"&enemie_p=="Paper"){
  print(paste("Enemies Turn :",enemie_p))
  print("Win")
  win <- win+1
  print("[1]continue,[2]Exit") 
  start <- readLines("stdin",n=1)
}

#lose
if(rps=="3"&enemie_p=="Rock"){
  print(paste("Enemies Turn :",enemie_p))
  print("Lose")
  lose <- lose+1
  print("[1]continue,[2]Exit") 
  start <- readLines("stdin",n=1)
}
if(rps=="2"&enemie_p=="Scissors"){
  print(paste("Enemies Turn :",enemie_p))
  print("Lose")
  lose <- lose+1
  print("[1]continue,[2]Exit") 
  start <- readLines("stdin",n=1)
}

if(rps=="1"&enemie_p=="Paper"){
  print(paste("Enemies Turn :",enemie_p))
  print("Lose")
  lose <- lose+1
  print("[1]continue,[2]Exit") 
  start <- readLines("stdin",n=1)
}

#draw

if(rps=="1"&enemie_p=="Rock"){
  print(paste("Enemies Turn :",enemie_p))
  print("Draw")
  draw <- draw+1
  print("[1]continue,[2]Exit") 
  start <- readLines("stdin",n=1)
}

if(rps=="2"&enemie_p=="Paper"){
  print(paste("Enemies Turn :",enemie_p))
  print("Draw")
  draw <- draw+1
  print("[1]continue,[2]Exit") 
  start <- readLines("stdin",n=1)
}

if(rps=="3"&enemie_p=="Scissors"){
  print(paste("Enemies Turn :",enemie_p))
  print("Draw")
  draw <- draw+1
  print("[1]continue,[2]Exit") 
  start <- readLines("stdin",n=1)
}
if(start!=1){
  df <- data.frame(win,lose,draw)
  print("Thanks for playing ours game")
  print("This is your summary")
  print(df)
  break
}

































  }