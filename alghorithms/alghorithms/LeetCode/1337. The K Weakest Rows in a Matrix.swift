// m == n // 틀린 답
class Solution {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var soldiers = Array(repeating: 0, count: mat.count)
        var check = Array(repeating: false, count: mat.count)
        
        for i in 0 ..< mat.count {
            let row = mat[i]
            let value = (row.reduce(0,+)) - 1
            let element = check[value]
            
            if element == false {
                soldiers[value] = i
                check[value] = true
            } else {
                for j in value ..< check.count {
                    if check[j] == false {
                        soldiers[j] = i
                        check[j] = true
                    }
                }
            }
        }
        
        let soldierCount = soldiers.compactMap{ $0 }
        return Array(soldierCount.prefix(k))
    }
}

// m != n // 정답
class Solution {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var tuple = [(Int,Int)]()
        
        for i in 0 ..< mat.count {
            let sum = mat[i].reduce(0,+)
            tuple.append((i,sum))
        }
        
        let sorted = tuple.sorted { l, r in
            if l.1 == r.1 {
                return l.1 > r.1
            }
            return l.1 < r.1
        }
        
        let result = sorted.map{ $0.0 }.prefix(k)
        
        return Array<Int>(result)
    }
}

// 테스트
import Testing

struct Tests {
    private let solution = Solution()
    
    @Test func test1() async throws {
        #expect(solution.kWeakestRows([[1,1,0,0,0],
                                       [1,1,1,1,0],
                                       [1,0,0,0,0],
                                       [1,1,0,0,0],
                                       [1,1,1,1,1]], 3) == [2,0,3])
    }
    
    @Test func test2() async throws {
        #expect(solution.kWeakestRows([[1,0,0,0],
                                       [1,1,1,1],
                                       [1,0,0,0],
                                       [1,0,0,0]], 2) == [0,2])
    }
    
    @Test func test3() async throws {
        #expect(solution.kWeakestRows([[1,1,0,0,0],
                                       [1,1,1,1,0],
                                       [1,0,0,0,0],
                                       [1,1,0,0,0],
                                       [1,1,1,1,1]], 3) == [2,0,3])
    }
    
    @Test func test4() async throws {
        #expect(solution.kWeakestRows([[1,1,1,1,1,1],
                                       [1,1,1,1,1,1],
                                       [1,1,1,1,1,1]], 1) == [0])
    }
}
