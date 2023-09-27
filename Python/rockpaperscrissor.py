import random

tool = ["rock","paper","scissors"]
win = 0
lose = 0
draw = 0

# create main function of the game
def startgame():
    global win,lose,draw
    user_choice = input("เลือก rock, paper, scissors: ")
    if user_choice not in tool:
        print("เลือกไม่ถูกต้อง")
        return
    #ใช้ random สำหรับ bot
    bot_choice = random.choice(tool)

    print(f"คุณเลือก {user_choice} ")
    print(f"ศัตรูเลือก {bot_choice}")

    # check the answer
    if user_choice == bot_choice:
        print("เสมอ!")
        draw += 1
    elif user_choice == "rock" and bot_choice == "paper"\
         or user_choice == "scissors" and bot_choice == "rock"\
         or user_choice == "paper" and bot_choice == "scissors":
        print("แพ้")
        lose += 1
    elif user_choice == "paper" and bot_choice == "rock"\
        or user_choice == "rock" and bot_choice == "scissors"\
        or user_choice == "scissors" and bot_choice == "paper":
        print("ชนะ!")
        win += 1

#loop the game
while True:
    start =input("Welcome to Rock paper and Scissors Game! press enter to continue: ")
    if start != "enter":
        break
    startgame()
    print(f"Win {win} Lose{lose} Draw{draw}")
    tryagain = input("เล่นอีกครั้งหรือไม่ [Yes],[No]:")
    if tryagain.lower() == "no":
        break

    
        

