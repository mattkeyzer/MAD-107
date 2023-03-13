import UIKit

let cost = 18.67
var tipClosure: ((Double) -> (Double)) = { number in
    let totalWithTip = number + (number * 0.2)
    return totalWithTip
}

tipClosure(cost)

func roundedTotal() {
    let totalCost = ceilf(Float(tipClosure(cost)))
    print("Your total cost will be $" + "\(Int(totalCost))")
    
}

roundedTotal()
