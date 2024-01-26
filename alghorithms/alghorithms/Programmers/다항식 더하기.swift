func solution(_ polynomial:String) -> String {
    let poly = (polynomial.split(separator: "+")).map{ String($0.replacingOccurrences(of: " ", with: "")) }
    var xSum = 0
    var sum = 0
    
    for i in 0 ..< poly.count {
        if poly[i].contains("x") {
            let x = poly[i].replacingOccurrences(of: "x", with: "")
            xSum += x != "" ? Int(x)! : 1
        } else {
            sum += Int(poly[i])!
        }
    }
     
    
    if xSum <= 1 && sum == 0 {
        return "x"
    } else if xSum == 0 && sum > 0{
        return "\(sum)"
    } else if xSum == 1 && sum > 0 {
        return "x + \(sum)"
    } else if xSum > 1 && sum == 0 {
        return "\(xSum)x"
    } else {
        return "\(xSum)x + \(sum)"
    }
}
