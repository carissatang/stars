import random

def setup():
    size(640, 480)

#initialize list with x and y coordinates of the first 100 stars
stars = []
for i in range(100):
    stars.append([0]*2)

#generate random coordinates for 100 stars
for circle in range(100):
    x = random.randint(0, 640)
    y = random.randint(0, 480)
    stars[circle][0] = x
    stars[circle][1] = y

index_max = 100    
                        
def draw():
    global index_max, stars
    background(0)
    noStroke()
    fill(255)
    
    index = 0
    
    while index < index_max:
        #removes star if off screen
        if stars[index][0] > 640:
            stars.pop(index)
            index_max -= 1
        else:
            #draws star and moves it
            ellipse(stars[index][0], stars[index][1], 5, 5)
            stars[index][0] += 0.2
            index += 1
    
    #add new stars every 60 frames
    if frameCount % 60 == 0:
        stars.append([random.randint(-10, 0),random.randint(0, 480)])
        index_max += 1
