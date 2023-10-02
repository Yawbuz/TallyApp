//
//  JonkDrawer.swift
//  Tally App
//
//  Created by shark boy on 10/2/23.
//

import Foundation

class Tally{
    var number: Int

    init(_ number: Int) {
        self.number = number
    }
    
    func increment(_ thisMuch: Int) {
        number += thisMuch
        print(number)
    }
    func repetedlyIncrement(_ thisMuch: Int, _ thisManyTimes: Int) {
        for _ in 0..<thisManyTimes { //always index at 0 loool pretend you know how a computer works and you have all that fancy "lodjic" in ur programs
            increment(thisMuch)
        }
    }
}
