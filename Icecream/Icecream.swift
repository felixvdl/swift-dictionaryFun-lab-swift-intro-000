//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String : String] = ["Joe": "Peanut Butter and Chocolate",
                                                        "Tim": "Natural Vanilla",
                                                        "Sophie": "Mexican Chocolate",
                                                        "Deniz": "Natural Vanilla",
                                                        "Tom": "Mexican Chocolate",
                                                        "Jim": "Natural Vanilla",
                                                        "Susan": "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        for (name, iceFlavor) in favoriteFlavorsOfIceCream {
            if flavor == iceFlavor {
                names.append(name)
            }
        }
        return names
    }
    
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var count = 0
        for (_, iceFlavor) in favoriteFlavorsOfIceCream {
            if flavor == iceFlavor {
                count += 1
            }
        }
        return count
    }
    
    
    
    
    
    // 4.
   
    
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
        
    }
    
    
    
    
    // 5.
   
    func replace(flavor: String,forPerson person: String) -> Bool {
        var answer: Bool
        if  favoriteFlavorsOfIceCream[person] != nil {
            if favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person) != nil {
                answer = true
            } else {
                answer = false
            }
        } else {
            answer = false
        }
        return answer
    }
    
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        var answer: Bool
        if favoriteFlavorsOfIceCream.removeValue(forKey: person) != nil {
            answer = true
        } else  {
            answer = false
        }
        return answer
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        var answer: Bool
        if favoriteFlavorsOfIceCream[person] != nil {
            answer = false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
            answer = true
        }
        return answer
    }
    
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        var returnString: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        let count = favoriteFlavorsOfIceCream.count
        for (index, name) in allNames.enumerated() {
            returnString += "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            if index < count - 1 {
                returnString += "\n"
            }
        }
        return returnString
    }
    
    
    
    
    
    

}
