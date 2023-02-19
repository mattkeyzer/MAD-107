// *** variables ***

// enemy
var x1 = 0.0
var y1 = 3.0

// player
var x2 = 4.0
var y2 = 0.0

// calculating distance formula
// distance formula: sqrt(((x2-x1)^2) + ((y2-y1)^2))

var distance1 = 0.0
var distance2 = 0.0
var difference1 = 0.0
var difference2 = 0.0
var distanceSquared = 0.0
var distance = 0.0

// calculating distance with distance formula

var aSquared = 0.0
var bSquared = 0.0
var cSquared = 0.0
var c = 0.0

// *** processing ***
difference1 = x2 - x1
difference2 = y2 - y1

difference1 = difference1 * difference1
difference2 = difference2 * difference2

distanceSquared = difference1 + difference2

distance = distanceSquared.squareRoot()

// output

print(distance)
