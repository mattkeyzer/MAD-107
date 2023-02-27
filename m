import Foundation
var hour = 0
var minute = 0
var second = 0




while second <= 60 {
    print(hour, ":", minute, ":", second)
    Thread.sleep(forTimeInterval: 1)
    second += 1
    if second == 60{
        minute += 1
        second = 0
        if minute == 60{
            hour += 1
            minute = 0
        }
    }
}
