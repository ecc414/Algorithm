//
//  main.swift
//  Fibonacci
//
//  Created by 엄철찬 on 2022/07/02.
//

import Foundation

//태어난 지 2일 지나면 새끼를 한 마리 낳고 그 이후는 매일 새끼 한 마리씩 낳는 생물이 있다
//1일째 막 태어난 생물을 한 마리 받았다고 했을 때 n일이 지난 후 몇마리가 되겠는가
//(이 생물이 처음 새끼를 낳는 것은 3일째 이다)

func breeding(_ date:Int) -> Int{
    guard date > 1 else {
        return date
    }
    return breeding(date - 1) + breeding(date - 2)
}

print(breeding(11))
