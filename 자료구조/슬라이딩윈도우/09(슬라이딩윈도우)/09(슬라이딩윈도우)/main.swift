//
//  main.swift
//  09(슬라이딩윈도우)
//
//  Created by 엄철찬 on 2022/06/27.
//

import Foundation

print("Hello, World!")


func recursive(_ height:Int){
    if height != 1{
        recursive(height-1)
    }
    for _ in 1...height{
        print("*",terminator: "")
    }
    print("")
}

recursive(7)

var a = "안녕하세요"
print(a.count)

