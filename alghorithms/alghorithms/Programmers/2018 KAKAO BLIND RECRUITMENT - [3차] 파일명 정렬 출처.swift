func solution(_ files:[String]) -> [String] {
    var filesPart = [[String]]()
    
    // 파트 나누기
    for file in files {
        let arr = Array(file).map { String($0) }
        var location = 0
        var part = [arr[0], "", ""]
        
        for i in 1 ..< arr.count {
            if Int(arr[i]) != nil {
                if location == 0 {
                    location = 1
                }
            } else {
                if location == 1 {
                    location = 2
                }
            }
            
            part[location] += arr[i]
        }
        
        filesPart.append(part)
    }
    
    // 정렬
    for i in 0 ..< filesPart.count - 1 {
        for j in 0 ..< (filesPart.count - i) - 1 {
            let first = (filesPart[j][0]).lowercased()
            let second = (filesPart[j + 1][0]).lowercased()
            
            if first > second {
                filesPart.swapAt(j, j + 1)
            } else if first == second {
                let first = Int(filesPart[j][1])!
                let second = Int(filesPart[j + 1][1])!
                
                if first > second {
                    filesPart.swapAt(j, j + 1)
                }
            }
        }
    }
        
    return filesPart.map{$0.joined()}
}
