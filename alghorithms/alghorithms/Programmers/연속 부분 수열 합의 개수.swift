//
//  연속 부분 수열 합의 개수.swift
//  alghorithms
//
//  Created by 인터웍스_맥북 on 1/22/24.
//

import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/131701

//func solution(_ elements:[Int]) -> Int {
//    var arr = elements
//    var result = elements
//    var num = 1
//    var plusNum = 0
//
//    while true {
//        for i in 0 ..< elements.count {
//            if i == elements.count - 1 {
//                arr.append(contentsOf: elements[0 ... plusNum])
//                plusNum += 1
//            }
//            let sum = arr[i ... i + num].reduce(0,+)
//            result.append(sum)
//        }
//
//        num += 1
//
//        if plusNum == elements.count - 2 {
//            result.append(elements.reduce(0,+))
//            return Set(result).count
//        }
//    }
//    return 0
//}

// https://jenikeju.tistory.com/69
func solution(_ elements:[Int]) -> Int {
    var sumSet = Set<Int>()
    
    for i in 0 ..< elements.count {
        var sum = 0
        
        for j in 0 ..< elements.count {
            var idx = i+j
            
            if idx >= elements.count {
                idx = idx - elements.count
            }
            
            sum += elements[idx]
            sumSet.insert(sum)
        }
    }
    
    return sumSet.count
}
