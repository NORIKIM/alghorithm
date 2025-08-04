func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var wantDic = [String:Int]()
    var dayCount = 0
    
    for i in 0 ..< want.count {
        wantDic.updateValue(number[i], forKey: want[i])
    }
    
    for i in 0 ..< discount.count {
        if wantDic[discount[i]] != nil {
            var dic = wantDic
            
            for j in i ..< discount.count {
                let food = discount[j]
                
                if dic[food] == nil || dic[food]! == 0{
                    break
                } else {
                    dic[food]! -= 1
                }
            }
            
            let sum = dic.values.reduce(0,+)
            if sum == 0 {
                dayCount += 1
            }
        }
    }
    
    return dayCount
}
