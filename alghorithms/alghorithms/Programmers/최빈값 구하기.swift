//
//  최빈값 구하기.swift
//  alghorithms
//
//  Created by 김지나 on 2024/01/24.
//

import Foundation

func solution(_ array:[Int]) -> Int {
    var dic = [Int:Int]()
    
    for i in 0 ..< array.count {
        dic.updateValue(0, forKey: array[i])
    }
    
    for j in 0 ..< array.count {
        dic[array[j]]! += 1
    }
    
    let max = dic.values.max()!
    var result = 0
    var maxCount = 0
    
    for (key,value) in dic {
        if value == max {
            if maxCount == 1 {
                return -1
            }
            result = key
            maxCount += 1
        }
    }
    
    return result
}
