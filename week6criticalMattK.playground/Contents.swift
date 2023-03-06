import UIKit
import Foundation

var wiiVideogames = [String]()

wiiVideogames.append("New Super Mario Bros")
wiiVideogames.append("Mario Party 9")
wiiVideogames.append("Super Mario Galaxy")
wiiVideogames.append("Super Mario Galaxy 2")
wiiVideogames.append("Wii Sports")
wiiVideogames.append("Wii Sports Resort")
wiiVideogames.append("Mariokart")
wiiVideogames.append("Mario Super Sluggers")
print("My favorite wii games!")
print("\n")
for game in wiiVideogames{
    print(game)
}
print("\n")
print("onto pc games")
print("\n")
var pcVideogames: [String: Int] = [:]
pcVideogames["Counter-Strike: Global Offensive"] = 353
pcVideogames["LEGO Batman 3"] = 2
pcVideogames["Peggle Deluxe"] = 6
pcVideogames["Bloons TD 6"] = 145
pcVideogames["Terraria"] = 61
pcVideogames["Mini Motorways"] = 25
pcVideogames["Hades"] = 22
pcVideogames["Stardew Valley"] = 17
pcVideogames["Castle Crashers"] = 11

let sortedByHourspcVideogames = pcVideogames.sorted { $0.value > $1.value }

for game in sortedByHourspcVideogames{
    print(game.key, "played for",game.value, "hours")
}
var total = 0
for game in sortedByHourspcVideogames{
    total += game.value
}
print("\n")
print("you've played pc games for", total, "hours")

let days = Double(total) / 24

print("that is about", days, "days")
