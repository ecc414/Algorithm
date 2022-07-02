//
//  main.swift
//  02(배열과리스트)
//
//  Created by 엄철찬 on 2022/06/22.
//

import Foundation

let numOfTests = Float(String(readLine()!))!
let scores     = readLine()!.split(separator:" ").map{Float(String($0))!}
var highest    : Float = 0
let sum        : Float = scores.reduce(0){ if $1 > highest {
        highest = $1
    }
    return $0 + $1
}
let result     = (sum*100)/(numOfTests*highest)
print(result)
