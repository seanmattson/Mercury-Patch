//: Playground - noun: a place where people can play

import UIKit
class PatientInfo {
    // MARK: Properties
    
    var name: String
    var pressure: Array<Double>?
    
    // MARK: Initialization
    
    init?(name: String) {
        self.name = name
        
        if name.isEmpty {
            return nil
        }
        
        // Create Pressure Graph Array at Initialization
        var pressure = [Double]()
        var i = 0.0
        
        for _ in 0...99 {
            i = Double(arc4random_uniform(11)) + 10.0
            pressure.append(i)
        }
        
        self.pressure = pressure
    }
    

    
}

let George = PatientInfo(name: "George")!



George.pressure




