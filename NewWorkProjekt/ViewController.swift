//
//  ViewController.swift
//  NewWorkProjekt
//
//  Created by Lepestok Jora on 28.09.2024.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let textLable = UILabel()
    private let imageContainerView = UIView()
    private let imageCV = UIImageView()
    //private lazy let textLable: UILabel = setupLableTwo() (третий способ)
    
    //Второй способ (замыкание)
    /* private let setuoLable: UILabel = {
     let lable = UILabel()
     lable.text = "Hi"
     lable.font = .systemFont(ofSize: 30, weight: .bold)
     lable.textColor = .red
     return lable
     }()
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        updateNumbers()
        setupLable()
        
        view.addSubview(textLable)
        view.addSubview(imageContainerView)
        imageContainerView.addSubview(imageCV)
        
        setupView()
        setupImageContainerView()
        setupImageCV() 
    }
    
    private func updateNumbers() {
        helper.addNumber(Int.random(in: 1...10))
        
        for number in helper.getNumbers() {
            print(number)
        }
    }
    
    private func setupLable() {
        let firsNumber = helper.getNumbers().first
        textLable.text = "\(firsNumber ?? 0)"
        textLable.font = .systemFont(ofSize: 30, weight: .bold)
        textLable.backgroundColor = .yellow
        textLable.textColor = .red
        textLable.layer.cornerRadius = 10
        textLable.frame = .init(x: 30, y: 30, width: 100, height: 50)
        textLable.clipsToBounds = true
    }
    // Третий способ (вызываем прямо из экземпляра класса)
    /*private func setupLableTwo() -> UILabel {
     let lable = UILabel()
     lable.text = "Hi"
     lable.font = .systemFont(ofSize: 30, weight: .bold)
     lable.textColor = .red
     return lable
     }
     */
    

    
    private func setupView() {
        let gradien = CAGradientLayer()
        gradien.frame = view.bounds
        gradien.colors = [UIColor.green.cgColor, UIColor.blue.cgColor]
        gradien.startPoint = CGPoint(x: 0, y: 0)
        gradien.endPoint = CGPoint(x: 1, y: 1)
        
        //Добовляем подсклой к кнопке
        view.layer.insertSublayer(gradien, at: 0)
    }
    
    private func setupImageContainerView() {
        imageContainerView.frame = CGRect(x: 30, y: 130, width: 100, height: 200)
        imageContainerView.backgroundColor = .brown
        imageContainerView.layer.shadowColor = UIColor.black.cgColor
        imageContainerView.layer.shadowOffset = CGSize(width: 20, height: 20)
        imageContainerView.layer.shadowOpacity = 0.7
        imageContainerView.layer.cornerRadius = 10
    }
    
    private func setupImageCV() {
        imageCV.frame = imageContainerView.bounds
        imageCV.image = UIImage(named: "dog")
        imageCV.tintColor = .black
        imageCV.layer.cornerRadius = 10
        imageCV.clipsToBounds = true
    }
}

