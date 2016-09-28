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
        _ = 0
        for (key, value) in trivia {
            let charactersInKeyString = Array(key.lowercased().characters)
            let charactersInValueString = Array(value.lowercased().characters)
            for (index , _) in charactersInValueString.enumerated() {
                
                for (index1, _) in charactersInKeyString.enumerated(){
                    if charactersInValueString[index] == charactersInKeyString[index1]  {
                        break
                    }
                }
                
            }
            return (key)
        }
        return ("")
    }
}
