//
//  N개의 최소공배수.swift
//  alghorithms
//
//  Created by 김지나 on 2024/01/20.
//

import Foundation

// https://green1229.tistory.com/111
func solution(_ arr:[Int]) -> Int {
    // 가장 큰 수가 공배수의 기준
    let numArr = arr.sorted(by: >) // 내림차순
    var result = numArr[0]
    let maxNum = result

    while true {
        var count: Int = 0

        for i in 1 ..< numArr.count {
            if result % numArr[i] == 0 { // 약수 확인
                count += 1
            }
        }

        if count == numArr.count - 1 {
            return result
        } else {
            result += maxNum
            continue
        }
    }
}
