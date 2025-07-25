// https://school.programmers.co.kr/learn/courses/30/lessons/12906

func solution(_ arr: [Int]) -> [Int] {
    var answer: [Int] = [arr[0]]
    
    for i in 1 ..< arr.count {
        let last = answer.last
        
        if arr[i] != last {
            answer.append(arr[i])
        }
    }

    return answer
}
