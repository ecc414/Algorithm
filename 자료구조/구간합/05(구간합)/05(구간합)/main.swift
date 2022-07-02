//
//  main.swift
//  05(구간합)
//
//  Created by 엄철찬 on 2022/06/23.
//

import Foundation

var a = [12:54]
a[12] = a[12]! + 1
let input = readLine()!.split(separator:" ").map{Int(String($0))!}

var check = [Int,Int]

