//
//  main.swift
//  01(배열과리스트)
//
//  Created by 엄철찬 on 2022/06/22.
//

import Foundation

let numOfInput = readLine()!
let input = readLine()!.map{Int(String($0))!}.reduce(0,+)
print(input)
