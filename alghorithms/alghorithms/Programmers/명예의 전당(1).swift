// 최종
func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var hall = [score[0]]
    var result = [score[0]]
    
    for i in 1 ..< score.count {
        let s = score[i]
        var temp = hall
        
        temp.append(s)
        hall = temp.sorted(by: >)
        
        if hall.count > k {
            hall = Array(hall.prefix(k))
        }
        
        result.append(hall.last!)
    }
    
    return result
}

// 다른 사람 풀이
func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var arr = [Int]()
    var result = [Int]()
    for s in score {
        arr.append(s)
        if arr.count > k {
            arr.sort()
            arr.removeFirst()
        }
        result.append(arr.min()!)
    }
    return result
}
