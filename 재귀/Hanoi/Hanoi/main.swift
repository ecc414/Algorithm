//
//  main.swift
//  Hanoi
//
//  Created by 엄철찬 on 2022/07/02.
//

import Foundation

print("Hanoi tall : ", terminator: "")

let input = Int(String(readLine()!))!

var countInFunc = 0

func hanoi(_ tall : Int, x : String, y : String, z : String){
    guard tall != 0 else { return }
    countInFunc += 1
    hanoi(tall - 1, x: x, y: z, z: y)
    print("\(tall) , \(x) -> \(y)")
    hanoi(tall - 1, x: z, y: y, z: x)
    
}

hanoi(input, x: "A", y: "B", z: "C")

print("count in Function is \(countInFunc)")
print("calculated count is \(pow(2,input) - 1)")

