//
//  main.swift
//  alghorithms
//
//  Created by 인터웍스_맥북 on 1/19/24.
//

import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    let id = id_pw[0]
    let pw = id_pw[1]
    
    for i in 0 ..< db.count {
        if db[i][0] == id {
            if db[i][1] == pw {
                return "login"
            }
            else {
                return "wrong pw"
            }
        }
    }
    
    return "fail"
}

