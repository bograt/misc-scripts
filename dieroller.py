from random import randint
roll = ''
print("Roll dice (1d20, 2d6, &c.)")
print("'q' to quit")
while True:
    roll = input()
    if roll.lower() == 'q':
        break
    d = roll.find('d')
    dice = int(roll[0:d])
    sides = int(roll[d+1:])
    print(dice*sides)

