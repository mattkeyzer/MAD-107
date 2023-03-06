import UIKit

import Foundation
//init dictionary
var rosterNumber: [String: Int] = [:]
//player numbers

//forwards
rosterNumber["J. Anderson"] = 15
rosterNumber["A. Athanasiou"] = 89
rosterNumber["A. Bjork"] = 24
rosterNumber["C. Blackwell"] = 43
rosterNumber["J. Dickinson"] = 17
rosterNumber["M. Entwistle"] = 58
rosterNumber["C. Guttman"] = 70
rosterNumber["R. Johnson"] = 52
rosterNumber["T. Johnson"] = 90
rosterNumber["B. Katchouk"] = 14
rosterNumber["J. Khaira"] = 16
rosterNumber["P. Kurashev"] = 23
rosterNumber["T. Raddysh"] = 11
rosterNumber["L. Reichel"] = 27
rosterNumber["J. Toews"] = 19
rosterNumber["A. Wagner"] = 00

//defense
rosterNumber["A. Englund"] = 28
rosterNumber["C. Jones"] = 82
rosterNumber["S. Jones"] = 4
rosterNumber["I. Mitchell"] = 51
rosterNumber["C. Murphy"] = 5
rosterNumber["J. Tinordi"] = 25
rosterNumber["N. Zaitsev"] = 22

//goalies
rosterNumber["P. Mrazek"] = 34
rosterNumber["A. Stalock"] = 32

var rosterAge: [String: Int] = [:]
//player Ages

//forwards
rosterAge["J. Anderson"] = 24
rosterAge["A. Athanasiou"] = 28
rosterAge["A. Bjork"] = 26
rosterAge["C. Blackwell"] = 29
rosterAge["J. Dickinson"] = 27
rosterAge["M. Entwistle"] = 23
rosterAge["C. Guttman"] = 23
rosterAge["R. Johnson"] = 24
rosterAge["T. Johnson"] = 32
rosterAge["B. Katchouk"] = 24
rosterAge["J. Khaira"] = 28
rosterAge["P. Kurashev"] = 23
rosterAge["T. Raddysh"] = 25
rosterAge["L. Reichel"] = 20
rosterAge["J. Toews"] = 34
rosterAge["A. Wagner"] = 25

//defense
rosterAge["A. Englund"] = 27
rosterAge["C. Jones"] = 25
rosterAge["S. Jones"] = 28
rosterAge["I. Mitchell"] = 24
rosterAge["C. Murphy"] = 29
rosterAge["J. Tinordi"] = 31
rosterAge["N. Zaitsev"] = 31

//goalies
rosterAge["P. Mrazek"] = 31
rosterAge["A. Stalock"] = 35

let sortedByAgeRosterAge = rosterAge.sorted { $0.value < $1.value }
print("Here are your Chicago Blackhawks!!!")
print("sorted by age...")
for player in sortedByAgeRosterAge{
    print(player.key, player.value)
    
}
//calculating average age

var averageAge = 0
var count = 0
for player in sortedByAgeRosterAge{
    averageAge += player.value
    count += 1
}
averageAge = averageAge / count
print("\n")
print("the average player age is ",averageAge)

//init dictionary
var rosterBirthplace: [String: String] = [:]
//player Countries
rosterBirthplace["J. Anderson"] = "USA"
rosterBirthplace["A. Athanasiou"] = "CAN"
rosterBirthplace["A. Bjork"] = "USA"
rosterBirthplace["C. Blackwell"] = "USA"
rosterBirthplace["J. Dickinson"] = "CAN"
rosterBirthplace["M. Entwistle"] = "CAN"
rosterBirthplace["C. Guttman"] = "USA"
rosterBirthplace["R. Johnson"] = "CAN"
rosterBirthplace["T. Johnson"] = "USA"
rosterBirthplace["B. Katchouk"] = "CAN"
rosterBirthplace["J. Khaira"] = "CAN"
rosterBirthplace["P. Kurashev"] = "CHE"
rosterBirthplace["T. Raddysh"] = "CAN"
rosterBirthplace["L. Reichel"] = "DEU"
rosterBirthplace["J. Toews"] = "CAN"
rosterBirthplace["A. Wagner"] = "CAN"

//defense
rosterBirthplace["A. Englund"] = "SWE"
rosterBirthplace["C. Jones"] = "USA"
rosterBirthplace["S. Jones"] = "USA"
rosterBirthplace["I. Mitchell"] = "CAN"
rosterBirthplace["C. Murphy"] = "USA"
rosterBirthplace["J. Tinordi"] = "USA"
rosterBirthplace["N. Zaitsev"] = "RUS"

//goalies
rosterBirthplace["P. Mrazek"] = "CZE"
rosterBirthplace["A. Stalock"] = "USA"
print("\n")
let sortedByBirthplaceRosterBirthplace = rosterBirthplace.sorted { $0.value < $1.value }
print("Here are your Chicago Blackhawks!!!")
print("sorted by country...")
for player in sortedByBirthplaceRosterBirthplace{
    print(player.key, player.value)
}

var rosterHeight: [String: Int] = [:]
//player heights in inches

//forwards
rosterHeight["J. Anderson"] = 72
rosterHeight["A. Athanasiou"] = 74
rosterHeight["A. Bjork"] = 72
rosterHeight["C. Blackwell"] = 69
rosterHeight["J. Dickinson"] = 74
rosterHeight["M. Entwistle"] = 75
rosterHeight["C. Guttman"] = 69
rosterHeight["R. Johnson"] = 73
rosterHeight["T. Johnson"] = 68
rosterHeight["B. Katchouk"] = 74
rosterHeight["J. Khaira"] = 76
rosterHeight["P. Kurashev"] = 72
rosterHeight["T. Raddysh"] = 75
rosterHeight["L. Reichel"] = 72
rosterHeight["J. Toews"] = 74
rosterHeight["A. Wagner"] = 73

//defense
rosterHeight["A. Englund"] = 75
rosterHeight["C. Jones"] = 73
rosterHeight["S. Jones"] = 76
rosterHeight["I. Mitchell"] = 71
rosterHeight["C. Murphy"] = 76
rosterHeight["J. Tinordi"] = 78
rosterHeight["N. Zaitsev"] = 74

//goalies
rosterHeight["P. Mrazek"] = 74
rosterHeight["A. Stalock"] = 71

//calculate average height
var averageHeight = 0
count = 0
for player in rosterHeight{
    averageHeight += player.value
    count += 1
}

averageHeight = averageHeight / count


print("the average player height is",averageHeight, "inches")

let averageHeightInches = Measurement(value: Double(averageHeight), unit: UnitLength.inches)

let averageHeightFeet = averageHeightInches.converted(to: UnitLength.feet)
print("or", averageHeightFeet)

//player birthday months

var rosterMonths: [String: String] = [:]
//player heights in inches

//forwards
rosterMonths["J. Anderson"] = "june"
rosterMonths["A. Athanasiou"] = "august"
rosterMonths["A. Bjork"] = "august"
rosterMonths["C. Blackwell"] = "march"
rosterMonths["J. Dickinson"] = "july"
rosterMonths["M. Entwistle"] = "july"
rosterMonths["C. Guttman"] = "april"
rosterMonths["R. Johnson"] = "july"
rosterMonths["T. Johnson"] = "july"
rosterMonths["B. Katchouk"] = "june"
rosterMonths["J. Khaira"] = "august"
rosterMonths["P. Kurashev"] = "october"
rosterMonths["T. Raddysh"] = "feburary"
rosterMonths["L. Reichel"] = "may"
rosterMonths["J. Toews"] = "april"
rosterMonths["A. Wagner"] = "june"

//defense
rosterMonths["A. Englund"] = "january"
rosterMonths["C. Jones"] = "june"
rosterMonths["S. Jones"] = "october"
rosterMonths["I. Mitchell"] = "january"
rosterMonths["C. Murphy"] = "march"
rosterMonths["J. Tinordi"] = "febuary"
rosterMonths["N. Zaitsev"] = "october"

//goalies
rosterMonths["P. Mrazek"] = "febuary"
rosterMonths["A. Stalock"] = "july"


//calculate most month bdays

var januaryCount = 0
var febuaryCount = 0
var marchCount = 0
var aprilCount = 0
var mayCount = 0
var juneCount = 0
var julyCount = 0
var augustCount = 0
var septemberCount = 0
var octoberCount = 0
var novemberCount = 0
var decemberCount = 0

for player in rosterMonths{
    if player.value == "january"{
        januaryCount += 1
    }
    if player.value == "febuary"{
        febuaryCount += 1
    }
    if player.value == "march"{
        marchCount += 1
    }
    if player.value == "april"{
        aprilCount += 1
    }
    if player.value == "may"{
        mayCount += 1
    }
    if player.value == "june"{
        juneCount += 1
    }
    if player.value == "july"{
        julyCount += 1
    }
    if player.value == "august"{
        augustCount += 1
    }
    if player.value == "september"{
        septemberCount += 1
    }
    if player.value == "october"{
        octoberCount += 1
    }
    if player.value == "november"{
        novemberCount += 1
    }
    if player.value == "december"{
        decemberCount += 1
    }
}

var rostermostMonths: [String: Int] = [:]

rostermostMonths["january"] = januaryCount
rostermostMonths["febuary"] = febuaryCount
rostermostMonths["march"] = marchCount
rostermostMonths["april"] = aprilCount
rostermostMonths["may"] = mayCount
rostermostMonths["june"] = juneCount
rostermostMonths["july"] = julyCount
rostermostMonths["august"] = augustCount
rostermostMonths["september"] = septemberCount
rostermostMonths["october"] = octoberCount
rostermostMonths["november"] = novemberCount
rostermostMonths["december"] = decemberCount

let sortedBymonthRostermostMonths = rostermostMonths.sorted { $0.value > $1.value }
print("\n")
print("Here are your Chicago Blackhawks!!!")
print("sorted by months with the most birthdays...")
for birthday in sortedBymonthRostermostMonths{
    print(birthday.key, birthday.value)
}
