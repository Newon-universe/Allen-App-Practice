//
//  ViewController.swift
//  RSPGame
//
//  Created by Kim Yewon on 2022/08/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    var myChoice: Rsp = Rsp(rawValue: Int.random(in: 0...2))!
    var comChoice: Rsp = Rsp(rawValue: Int.random(in: 0...2))!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reset()
    }
    
    @IBAction func rspButtonTapped(_ sender: UIButton) {
        
        guard let title = sender.currentTitle else { return }
        
        switch title {
        case "가위": myChoice = Rsp.scissors
        case "바위": myChoice = Rsp.rock
        case "보": myChoice = Rsp.paper
        default: break
        }
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        comChoice = Rsp(rawValue: Int.random(in: 0...2))!
        
        switch comChoice {
        case .rock:
            comImageView.image = #imageLiteral(resourceName: "ready")
            comChoiceLabel.text = "바위"
        case .paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case .scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        
        switch myChoice {
        case .rock:
            myImageView.image = #imageLiteral(resourceName: "ready")
            myChoiceLabel.text = "바위"
        case .paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case .scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        
        if myChoice == comChoice {
            mainLabel.text = "비겼다"
        } else if myChoice == .rock && comChoice == .scissors {
            mainLabel.text = "이겼다"
        } else if myChoice == .scissors && comChoice == .paper {
            mainLabel.text = "이겼다"
        } else if myChoice == .paper && comChoice == .rock {
            mainLabel.text = "이겼다"
        } else {
            mainLabel.text = "졌다"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        reset()
    }
    
}

extension ViewController {
    func reset() {
        mainLabel.text = "선택하세요"
        
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = #imageLiteral(resourceName: "ready")
        //        UIImage(named: "ready.png")
        
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
    }
}
