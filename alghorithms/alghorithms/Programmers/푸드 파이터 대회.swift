func solution(_ food:[Int]) -> String {
    var result = [String]()
    
    for i in 1 ..< food.count {
        let target = food[i]
        
        if !(target <= 1) {
            let amount = target / 2
            let contents = Array(repeating: String(i), count: amount)
            result.append(contentsOf: contents)
        }
    }
    
    let rival = result.reversed()
    result.append("0")
    result.append(contentsOf: rival)
    
    return result.joined()
}

// 다른 사람 풀이
func solution(_ food:[Int]) -> String {
    var result = ""
    for i in food.indices {
        result += String(repeating: String(i), count: food[i] / 2)
    }
    return result + "0" + result.reversed()
}
