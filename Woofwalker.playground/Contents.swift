import UIKit

//Login to app

var greeting = "Hello user, welcome to WoofWalker"

let user = "Matt"
let password = "password"

var instruct = "Please enter username and password"

var user_input = "Matt"
var password_input = "password"

if user_input == user, password_input == password {
    //Login to app
    print(greeting)
} else {
    //Try again
    print(instruct)
}

let animal_name = "'Gus'"

//Main functionality

var a = 0.0
var b = 0.0
var x = 4.0
var y = 4.0



var start_location = (a,b)

var end_location = (x,y)



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
difference1 = x - a
difference2 = y - b

difference1 *= difference1
difference2 *= difference2

distanceSquared = difference1 + difference2

distance = distanceSquared.squareRoot()

// output


print("You have walked your animal " + animal_name + " " + String(format: "%.2f", distance) + " miles!")



// this wouldnt really be the best way to calculate total distance... it would need to be calculated continuously.

// the method to calculate distance would need to look something like this...

var active = true

while active {
    start_location = end_location
    end_location = (x,y)
    distance += distance
    
}


