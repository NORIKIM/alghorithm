class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for i in 0 ..< nums.count {
            let element = nums[i]
            
            if element >= target {
                return i
            }
        }
        
        return nums.count
    }
}

// 테스트 코드
import Testing

struct Tests {
    
    private let solution = Solution()
    private let nums = [1, 3, 5, 6]
    
    @Test func test1() async throws {
        #expect(solution.searchInsert(nums, 5) == 2)
    }
    
    @Test func test2() async throws {
        #expect(solution.searchInsert(nums, 2) == 1)
    }
    
    @Test func test3() async throws {
        #expect(solution.searchInsert(nums, 7) == 4)
    }
}
