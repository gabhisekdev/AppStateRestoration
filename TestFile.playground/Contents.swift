//: Playground - noun: a place where people can play

import UIKit

let dict: [String: Any] = ["ride": 7474849474]
let rideNumber = dict["ride"] as? String


let date = Calendar.current.date(byAdding: .hour, value: 1, to: Calendar.current.startOfDay(for: Date()))
print(date)
let components = Calendar.current.dateComponents([.hour, .minute], from: date!)
if let hour = components.hour,
    let minutes = components.minute {
print(hour)
    print(minutes)
}


let output = String(format: "%2$@ %1$@ %3$@", "Time", "is", "cruel")
let output1 = NSString(format: "%3$@", "Time", "is", "cruel")

var myString = "{53} balloons"
var key = "65"
var startIndex = 0
var endIndex = 0
for (index, char) in myString.enumerated() {
    if char == "{" {
        startIndex = index
    } else if char == "}" {
        endIndex = index
        let betweenBraces = (myString as NSString).substring(with: NSRange(location: startIndex + 1, length: endIndex - (startIndex + 1)))
        if betweenBraces == key {
            print(betweenBraces)
        } else {
            startIndex = 0
            endIndex = 0
        }
    }
}

extension String {
    func put(key: String, value: String) -> String {
        return ""
    }
}
