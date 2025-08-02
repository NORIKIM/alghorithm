func solution(_ num_list:[Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0 ..< num_list.count {
        let target = num_list[num_list.count - 1 - i]
        result.append(target)
    }
    
    return result
}

// 다른 사람 풀이
func solution(_ num_list:[Int]) -> [Int] {
    return num_list.reversed()
}
