#!/usr/bin/swift

import Foundation 
class HelloWorld { 
    // Swift 3+ code
    func print() { 
        let jsonObject = ["Hello": "World!"]
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: jsonObject, options: .prettyPrinted)
            let jsonString = NSString(data: jsonData as Data, encoding: String.Encoding.utf8.rawValue) as! String
            Swift.print(jsonString)                                    
            
        } catch _ {
            Swift.print ("Hm... something bad happened.")
        }
    } 
} 

let hw = HelloWorld()
hw.print()
