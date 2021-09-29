//
//  ViewController.swift
//  Change Color in Code
//
//  Created by Aleksandr Khalupa on 01.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let buttonResset = UIButton(type: .system)
    var buttonOnImageArray:[UIButton] = []
    var imageArray:[UIImageView] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    @objc func pressedImegeButton(_ sender:UIButton) {
        
        if imageArray[sender.tag].backgroundColor == UIColor(named: "myColor") {
            imageArray[sender.tag].backgroundColor = .darkGray
        } else if imageArray[sender.tag].backgroundColor == .darkGray {
            imageArray[sender.tag].backgroundColor = .systemTeal
        } else {
            imageArray[sender.tag].backgroundColor = .systemOrange
        }
  
    }
    
    
    
    @objc func pressedResetButton() {
        buttonOnImageArray = []
        imageArray = []
        setUI()
    }
    
    func setUI() {
        let side = (view.frame.width / 3) - (40 / 3)

        view.backgroundColor = .systemOrange
        
        for _ in 0..<12 {
            let image = UIImageView()
            image.backgroundColor = UIColor(named: "myColor")
            imageArray.append(image)
            view.addSubview(image)
        }

        imageArray[0].frame = CGRect(x: 10, y: view.frame.height / 6 - 60 , width: side, height: side)

        imageArray[1].frame = CGRect(x: 20 + side, y: view.frame.height / 6 - 60, width: side, height: side)

        imageArray[2].frame = CGRect(x: 30 + side * 2, y: view.frame.height / 6 - 60, width: side, height: side)

        imageArray[3].frame = CGRect(x: 10, y: view.frame.height / 6 - 60 + side + 10, width: side, height: side)

        imageArray[4].frame = CGRect(x: 20 + side, y: view.frame.height / 6 - 60 + side + 10, width: side, height: side)

        imageArray[5].frame = CGRect(x: 30 + side * 2, y: view.frame.height / 6 - 60 + side + 10, width: side, height: side)

        imageArray[6].frame = CGRect(x: 10, y: view.frame.height / 6 - 60 + 2 * side + 20 , width: side, height: side)

        imageArray[7].frame = CGRect(x: 20 + side, y: view.frame.height / 6 - 60 + 2 * side + 20 , width: side, height: side)

        imageArray[8].frame = CGRect(x: 30 + side * 2, y: view.frame.height / 6 - 60 + 2 * side + 20 , width: side, height: side)

        imageArray[9].frame = CGRect(x: 10, y: view.frame.height / 6 - 60 + 3 * side + 30, width: side, height: side)

        imageArray[10].frame = CGRect(x: 20 + side, y: view.frame.height / 6 - 60 + 3 * side + 30, width: side, height: side)

        imageArray[11].frame = CGRect(x: 30 + side * 2, y: view.frame.height / 6 - 60 + 3 * side + 30, width: side, height: side)
        
        view.addSubview(buttonResset)
        buttonResset.frame = CGRect(x: 10, y: view.frame.height / 6 - 60 + 4 * side + 40, width: view.frame.width - 20, height: side)
        buttonResset.backgroundColor = .systemPurple
        buttonResset.setTitle("Reset", for: .normal)
        buttonResset.setTitleColor(.white, for: .normal)
        buttonResset.titleLabel?.font = .systemFont(ofSize: 30)
        buttonResset.addTarget(nil, action: #selector(pressedResetButton), for: .touchUpInside)
        
        for index in 0..<12 {
            let button = UIButton(type: .system)
            button.addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
            button.tag = index
            buttonOnImageArray.append(button)
            view.addSubview(button)
            buttonOnImageArray[index].frame = imageArray[index].frame
        }

    }
}

