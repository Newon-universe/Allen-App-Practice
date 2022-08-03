//
//  ViewController.swift
//  UpDownGame
//
//  Created by Kim Yewon on 2022/08/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var computerChoice = Int.random(in: 1...10)
    var myChoice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let myNum = Int(sender.currentTitle ?? "-1") else { return }
        
        myChoice = myNum
    }
    
    @IBAction func resetPressed(_ sender: UIButton) {
        reset()
    }
    
    @IBAction func selectPressed(_ sender: UIButton) {
        if myChoice == -1 { return }
        
        numberLabel.text = String(myChoice)
        
        if computerChoice == myChoice {
            mainLabel.text = "정답입니다 ~ 😌"
        } else if computerChoice > myChoice {
            mainLabel.text = "UP"
        } else {
            mainLabel.text = "DOWN"
        }
    }
    
}

extension ViewController {
    func reset() {
        computerChoice = Int.random(in: 1...10)
        myChoice = 0
        mainLabel.text = "선택하세요"
        numberLabel.text = "선택하세요"
    }
}

