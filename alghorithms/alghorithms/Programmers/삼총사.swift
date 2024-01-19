//
//  삼총사.swift
//  alghorithms
//
//  Created by 인터웍스_맥북 on 1/19/24.
//

import Foundation

func solution(_ number:[Int]) -> Int {
    var answer = 0
    
    for i in 0 ..< number.count {
        for j in i+1 ..< number.count {
            for k in j+1 ..< number.count {
                if number[i] + number[j] + number[k] == 0 {
                    answer += 1
                }
            }
        }
    }
    
    return answer
}
