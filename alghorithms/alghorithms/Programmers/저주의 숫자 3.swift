func solution(_ n:Int) -> Int {
    var threeX = [0]
    
    for i in 1 ... 200 {
        if i % 3 == 0 || String(i).contains("3") {
            continue
        } else {
            threeX.append(i)
        }
    }
    
    return threeX[n]
}
