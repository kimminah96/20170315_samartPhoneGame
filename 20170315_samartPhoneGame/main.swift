//
//  main.swift
//  20170315_samartPhoneGame
//
//  Created by KPUGame on 2017. 3. 15..
//  Copyright © 2017년 KPUGame. All rights reserved.
//

import Foundation


let answer = randomIntBetween(low: 1, high: 100)

var turn = 1

while(true){
    let userInput = input()

    let inputAsInt = Int(userInput)

    print("Guess #\(turn): Enter a number between 1 and 100")
    
    if let guess = inputAsInt{
        if(guess>answer){
            print("Lower!")
        }else if(guess<answer){
            print("Higher!")
        }else{
            print("Correct!!! The answer is \(answer)")
            break
        }
    } else{
        print("Invalid input! Please enter a number")
        continue
        }
    turn = turn + 1
}
