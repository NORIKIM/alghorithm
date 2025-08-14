class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var n = n
        var count = 0
        
        if n < 3 { return 1 }
        
        for i in 1 ... n {
            let num = n - i
            
            if num >= 0 {
                n = num
                count += 1
            } else {
                break
            }
        }
        
        return count
    }
}

// 다른 사람 코드
class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var value = 1
        var n = n

        while n > value {
            n = n - value
            value += 1
        }

        if n < value && n > 0 {
            return value - 1
        } else {
            return value
        }
    }
}

// 테스트
import Testing

struct Tests {
    private let solution = Solution()
    
    @Test func test1() async throws {
        #expect(solution.arrangeCoins(13) == 4)
    }
    
    @Test func test2() async throws {
        #expect(solution.arrangeCoins(8) == 3)
    }
    
    @Test func test3() async throws {
        #expect(solution.arrangeCoins(5) == 2)
    }
    
    @Test func test4() async throws {
        #expect(solution.arrangeCoins(4) == 2)
    }
    
    @Test func test5() async throws {
        #expect(solution.arrangeCoins(3) == 2)
    }
    
    @Test func test6() async throws {
        #expect(solution.arrangeCoins(2) == 1)
    }
}
