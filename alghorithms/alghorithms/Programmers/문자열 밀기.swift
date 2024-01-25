import Foundation

func solution(_ A:String, _ B:String) -> Int {
    if A == B { return 0 }
    
    var a = A.map{String($0)}
    var result = 0
    
    for i in 0 ..< a.count {
        let last = String(a.last!)
        a.remove(at: a.count - 1)
        a.insert(last, at: 0)
        result += 1
        
        if a.joined() == B {
            return result
        }
    }
    
    return -1
}
