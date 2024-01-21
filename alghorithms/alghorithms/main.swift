//
//  main.swift
//  alghorithms
//
//  Created by 인터웍스_맥북 on 1/19/24.
//

import Foundation

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
//
//solution([7,9,1,1,4])
