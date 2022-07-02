//
//  main.swift
//  Recursion_and_Induction
//
//  Created by 엄철찬 on 2022/07/02.
//

import Foundation

func recursion(_ input:Int){
    guard input != 0 else {
        print("재귀")
        print("단계 1에 의해 P(\(input))가 성립합니다")
        return
    }
    recursion(input-1)
    print("단계 \(input)에 의해 P(\(input-1))가 성립한다면 P(\(input))도 성립한다고 할 수 있습니다")
    print("따라서 P(\(input))가 성립한다고 할 수 있습니다")
}

func induction(_ input:Int){
    print("귀납법")
    var k = 0
    print("단계 1에 의해 P(\(k))가 성립합니다")
    while(k<input){
        print("단계 \(k+1)에 의해 P(\(k))가 성립한다면 P(\(k+1))도 성립한다고 할 수 있습니다")
        print("따라서 p(\(k+1))가 성립한다고 할 수 있습니다")
        k += 1
    }
}


recursion(3)
induction(3)
