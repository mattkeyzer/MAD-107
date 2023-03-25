import UIKit
import Foundation
var greeting = "Hello! Welcome to PRIUS BUILDER!!!"


//If you would like to build a prius set build value to true
var build = true

if build{
    print(greeting)
    
    class Models {
        var le = 27450
        var xle = 30895
        var limited = 34465
        var awd = 1400
    }
    class Colors {
        var supersonic_red = 495
        var wind_chill_pearl = 495
        var midnight_black_metallic = 0
        var cutting_edge = 0
        var guardian_gray = 0
        var reservoir_blue = 0
    }
    class Accessories {
        var floor_mats = 180
        var paint_protection = 525
        var cargo_net = 60
    }
    var chooseColor = Colors()
    var chooseModel = Models()
    var chooseAccessories = Accessories()
    
    var colorselection = chooseColor.supersonic_red
    var modelselection = chooseModel.le + chooseModel.awd
    var accessoriesselection = chooseAccessories.cargo_net + chooseAccessories.paint_protection
    
    var total = colorselection + modelselection + accessoriesselection
    
    print("Your Prius will cost $\(total)")
}
else{
    print("You're missing out!")
}

