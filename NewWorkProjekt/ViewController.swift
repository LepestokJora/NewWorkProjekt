//
//  ViewController.swift
//  NewWorkProjekt
//
//  Created by Lepestok Jora on 28.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printContent("ViewDidload")
        
        
    }
    
    func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
        
        for number in helper.getNumbers() {
            print(number)
        }
    }
}

