//
//  main.swift
//  RandomBingo
//
//  Created by Kim Yewon on 2022/08/03.
//

import Foundation

let computerChoice = Int.random(in: 1...100)
var myChoice = 0

while myChoice != computerChoice {
    myChoice = Int(readLine()!)!
    
    if myChoice < computerChoice {
        print("up")
    } else if myChoice > computerChoice {
        print("down")
    } else {
        print("Bingo")
    }
}
