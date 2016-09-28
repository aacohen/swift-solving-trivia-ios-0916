//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
    func solveTrivia(_ trivia: [String : String]) -> String {
        
        for (key, value) in trivia {
            var charactersAreUnique = true
            let charactersInKeyString = Array(key.lowercased().characters)
            let charactersInValueString = Array(value.lowercased().characters)
            for (index , capitalCharacter) in charactersInValueString.enumerated() {
                print("now comparing \(capitalCharacter): ")
                for (index1, stateCharacter) in charactersInKeyString.enumerated(){
                    print("comparing with \(stateCharacter)")
                    if charactersInValueString[index] == charactersInKeyString[index1]  {
                        charactersAreUnique = false
                    }
                    
                }
                
            }
            if charactersAreUnique {
                return key
            }
            
        }
        return ("none are unique")
    }
}
