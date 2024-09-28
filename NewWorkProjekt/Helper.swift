//
//  Helper.swift
//  NewWorkProjekt
//
//  Created by Lepestok Jora on 28.09.2024.
//

import Foundation

class Helper {
    private var numbers: [Int] = []
    func addNumber(_ number: Int) {
        numbers.append(number)
    }
    
    func getNumbers() -> [Int] {
        numbers
    }
}
