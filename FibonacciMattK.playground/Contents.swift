import UIKit

func fibonacci() {
    var firstNum = 0
    var secondNum = 1
    var hold = 0
    var count = 0
    while count <= 1000{
        print(firstNum)
        hold = firstNum + secondNum
        firstNum = secondNum
        secondNum = hold
        count += 1
    }
}

fibonacci()
