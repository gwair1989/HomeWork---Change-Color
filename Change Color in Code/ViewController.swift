//
//  ViewController.swift
//  Change Color in Code
//
//  Created by Aleksandr Khalupa on 01.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let buttonResset = UIButton(type: .system)
    let buttonOnImageArray = [UIButton(type: .system), UIButton(type: .system), UIButton(type: .system), UIButton(type: .system), UIButton(type: .system), UIButton(type: .system), UIButton(type: .system), UIButton(type: .system), UIButton(type: .system), UIButton(type: .system), UIButton(type: .system), UIButton(type: .system)]
    let imageArray = [UIImageView(), UIImageView(), UIImageView(), UIImageView(), UIImageView(), UIImageView(), UIImageView(), UIImageView(), UIImageView(), UIImageView(), UIImageView(), UIImageView()]

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    @objc func pressedImegeButton(_ sender:UIButton){
        
        if imageArray[sender.tag].backgroundColor == UIColor(named: "myColor"){
            imageArray[sender.tag].backgroundColor = .darkGray
        }else if imageArray[sender.tag].backgroundColor == .darkGray{
            imageArray[sender.tag].backgroundColor = .systemTeal
        }else{
            imageArray[sender.tag].backgroundColor = .systemOrange
        }
        
        
    }
    
    
    
    @objc func pressedResetButton(){
        setUI()
    }
    
    func setUI(){
        
        let side = (view.frame.width / 3) - (40 / 3)
        view.backgroundColor = .systemOrange
        
        view.addSubview(imageArray[0])
        imageArray[0].frame = CGRect(x: 10, y: view.frame.height / 6 - 60 , width: side, height: side)
        imageArray[0].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[1])
        imageArray[1].frame = CGRect(x: 20 + side, y: view.frame.height / 6 - 60, width: side, height: side)
        imageArray[1].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[2])
        imageArray[2].frame = CGRect(x: 30 + side * 2, y: view.frame.height / 6 - 60, width: side, height: side)
        imageArray[2].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[3])
        imageArray[3].frame = CGRect(x: 10, y: view.frame.height / 6 - 60 + side + 10, width: side, height: side)
        imageArray[3].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[4])
        imageArray[4].frame = CGRect(x: 20 + side, y: view.frame.height / 6 - 60 + side + 10, width: side, height: side)
        imageArray[4].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[5])
        imageArray[5].frame = CGRect(x: 30 + side * 2, y: view.frame.height / 6 - 60 + side + 10, width: side, height: side)
        imageArray[5].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[6])
        imageArray[6].frame = CGRect(x: 10, y: view.frame.height / 6 - 60 + 2 * side + 20 , width: side, height: side)
        imageArray[6].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[7])
        imageArray[7].frame = CGRect(x: 20 + side, y: view.frame.height / 6 - 60 + 2 * side + 20 , width: side, height: side)
        imageArray[7].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[8])
        imageArray[8].frame = CGRect(x: 30 + side * 2, y: view.frame.height / 6 - 60 + 2 * side + 20 , width: side, height: side)
        imageArray[8].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[9])
        imageArray[9].frame = CGRect(x: 10, y: view.frame.height / 6 - 60 + 3 * side + 30, width: side, height: side)
        imageArray[9].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[10])
        imageArray[10].frame = CGRect(x: 20 + side, y: view.frame.height / 6 - 60 + 3 * side + 30, width: side, height: side)
        imageArray[10].backgroundColor = UIColor(named: "myColor")
        
        view.addSubview(imageArray[11])
        imageArray[11].frame = CGRect(x: 30 + side * 2, y: view.frame.height / 6 - 60 + 3 * side + 30, width: side, height: side)
        imageArray[11].backgroundColor = UIColor(named: "myColor")
        
        
        view.addSubview(buttonResset)
        buttonResset.frame = CGRect(x: 10, y: view.frame.height / 6 - 60 + 4 * side + 40, width: view.frame.width - 20, height: side)
        buttonResset.backgroundColor = .systemPurple
        buttonResset.setTitle("Reset", for: .normal)
        buttonResset.setTitleColor(.white, for: .normal)
        buttonResset.titleLabel?.font = .systemFont(ofSize: 30)
        buttonResset.addTarget(nil, action: #selector(pressedResetButton), for: .touchUpInside)
        
        
        view.addSubview(buttonOnImageArray[0])
        buttonOnImageArray[0].frame = imageArray[0].frame
        buttonOnImageArray[0].tag = 0
        buttonOnImageArray[0].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[1])
        buttonOnImageArray[1].frame = imageArray[1].frame
        buttonOnImageArray[1].tag = 1
        buttonOnImageArray[1].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[2])
        buttonOnImageArray[2].frame = imageArray[2].frame
        buttonOnImageArray[2].tag = 2
        buttonOnImageArray[2].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[3])
        buttonOnImageArray[3].frame = imageArray[3].frame
        buttonOnImageArray[3].tag = 3
        buttonOnImageArray[3].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[4])
        buttonOnImageArray[4].frame = imageArray[4].frame
        buttonOnImageArray[4].tag = 4
        buttonOnImageArray[4].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[5])
        buttonOnImageArray[5].frame = imageArray[5].frame
        buttonOnImageArray[5].tag = 5
        buttonOnImageArray[5].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[6])
        buttonOnImageArray[6].frame = imageArray[6].frame
        buttonOnImageArray[6].tag = 6
        buttonOnImageArray[6].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[7])
        buttonOnImageArray[7].frame = imageArray[7].frame
        buttonOnImageArray[7].tag = 7
        buttonOnImageArray[7].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[8])
        buttonOnImageArray[8].frame = imageArray[8].frame
        buttonOnImageArray[8].tag = 8
        buttonOnImageArray[8].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[9])
        buttonOnImageArray[9].frame = imageArray[9].frame
        buttonOnImageArray[9].tag = 9
        buttonOnImageArray[9].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[10])
        buttonOnImageArray[10].frame = imageArray[10].frame
        buttonOnImageArray[10].tag = 10
        buttonOnImageArray[10].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        view.addSubview(buttonOnImageArray[11])
        buttonOnImageArray[11].frame = imageArray[11].frame
        buttonOnImageArray[11].tag = 11
        buttonOnImageArray[11].addTarget(nil, action: #selector(pressedImegeButton), for: .touchUpInside)
        
        
    }
}

