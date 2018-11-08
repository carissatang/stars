"""
7. Convert the two coordinate lists into a 2-dimensional list called 'stars'. The general structure will be:
   stars = [[x1, y2], [x2, y2], [x3, y3]]
   stars[0]     # the first star as a list of coordinates [x1, y1]
   stars[0][0]  # the first star's x coordinate, x1
   stars[0][1]  # the first star's y coordinate, y1
"""

# two lists with three stars' xy coordinates
# (50, 200), (100, 250), (150, 300)

import random

def setup():
    size(640, 480)

stars_x = []
stars_y = []

#generate random coordinates for 100 stars
for star in range(100):
    x = [random.randint(0, 640)]
    y = [random.randint(0, 480)]
    stars_x += x
    stars_y += y

index_max = 100    
                        
def draw():
    global index_max
    background(0)
    noStroke()
    fill(255)
    
    index = 0
    while index < index_max:
        if stars_x[index] > 640:
            stars_x.pop(index)
            stars_y.pop(index)
            index_max -= 1
        else:
            ellipse(stars_x[index], stars_y[index], 5, 5)
            stars_x[index] += 0.5
            index += 1
       
    if frameCount % 60 == 0:
        stars_x.append(random.randint(-10, 0))
        stars_y.append(random.randint(0, 480))
        index_max += 1            
