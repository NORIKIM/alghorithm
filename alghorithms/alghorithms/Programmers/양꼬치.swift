//
//  양꼬치.swift
//  alghorithms
//
//  Created by 김지나 on 2024/01/22.
//

import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let yang = n >= 10 ? n / 10 : 0
    return (n * 12000) + ((k - yang) * 2000)
}
