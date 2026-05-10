# Setup: A secret number is chosen (either by a computer or a player) within a defined range, usually \(1\) to \(100\).
# Guessing: The player makes a guess. In some variations, the number of attempts is limited (e.g., 10 turns).
# Feedback: The setter tells the guesser if the guess is too high, too low, or correct.
# Winning: The game ends when the player correctly identifies the secret number.
# Loss Condition: The player loses if they run out of attempts or "lives" before finding the number.

import random as r

print("Welcome to the Number Guessing game!")
print("I'm thinking of a number")
print("you have 5 chances to guess the correct number.")

print('''Please select the difficulty level:
1. Easy (10 chances)
2. Medium (5 chances)
3. Hard (3 chances)''')
level=input()

secret=r.randint(1,100)
# secret=51


tries=0
limit=0

if level=='Easy':
    limit=10
    print('''Great! You have selected the Easy difficulty level.
Let's start the game!''')
elif level=='Medium':
    limit=5
    print('''Great! You have selected the Meduim difficulty level.
Let's start the game!''')
else:
    limit=3
    print('''Great! You have selected the Hard difficulty level.
Let's start the game!''')        

while tries<limit:
    guess=int(input("Enter your number: "))
    diff=abs(secret-guess)    
    if guess==secret:
        print("Its correct")
        print("you won")
        break
    else:
        tries=tries+1
        if guess>diff:
            print("too high")
        if guess<diff:
            print("too low")
if tries==limit:
    print("game over!")
    print("you have lost")                       





        
        





