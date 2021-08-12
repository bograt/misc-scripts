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
    for i in range(0,dice):
        result = randint(1,sides)
        total += result
        print(result, end=' ')
    print("Total:", total)
    total = 0
