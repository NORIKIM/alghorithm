import Foundation

// https://codingga-dingga.tistory.com/m/126
func solution(_ score:[[Int]]) -> [Int] {
    var avg = [Int]()
    var answer = [Int]()
    for s in score{
        avg.append(s[0]+s[1])
    }
    
    for i in avg{
        answer.append(avg.filter{$0 > i}.count + 1)
    }
    
    return answer
}
