//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Kim Yewon on 2022/08/02.
//

import UIKit

class ViewController: UIViewController {

    
    // @ == attribute
    // IB = Interface Builder
    // Outlet == 배출구
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    
    // 앱의 화면에 들어오면 처음 실행시키는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "방가방가"
    }


    
    @IBAction func buttonPressed(_ sender: UIButton) {
        mainLabel.text = "안녕하세요"
        mainLabel.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        myButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
    }
    
}

