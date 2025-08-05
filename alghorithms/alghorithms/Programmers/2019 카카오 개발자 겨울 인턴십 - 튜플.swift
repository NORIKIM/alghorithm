func solution(_ s:String) -> [Int] {
    let sArr =  s.split(separator: "}")
    var useArr = Array(repeating: [0], count: sArr.count)
    var result = [Int]()
    
    for str in sArr {
        let numArr = String(str).split(separator: ",").map{ String($0).filter{ $0.isNumber } }
        useArr[numArr.count - 1] = numArr.map{ Int($0)! }
    }
    
    result.append(useArr[0][0])
    
    for i in 1 ..< useArr.count {
        let arr = useArr[i].filter { !result.contains($0) }
        result.append(arr[0])
    }
    
    return result
}

// 다른 사람 풀이
func solution(_ s:String) -> [Int] {
    var components = [Int: Int]()

    s.split { !$0.isNumber }.map { Int(String($0))! }.forEach {
        components[$0, default: 0] += 1
    }

    return components.sorted { $0.value > $1.value }.map { $0.key }
}
