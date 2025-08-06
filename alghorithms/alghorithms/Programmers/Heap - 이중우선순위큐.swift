func solution(_ operations:[String]) -> [Int] {
    var q = [Int]()
    
    for i in 0 ..< operations.count {
        let target = operations[i]
        
        if target == "D -1" {
            if let min = q.min() {
                let idx = q.firstIndex(of: min)!
                q.remove(at: idx)
            }
        } else if target == "D 1" {
            if let max = q.max() {
                let idx = q.firstIndex(of: max)!
                q.remove(at: idx)
            }
        } else {
            let num = String(target.dropFirst(2))
            q.append(Int(num)!)
        }
    }
    
    return q.isEmpty ? [0,0] : [q.max()!, q.min()!]
}
