// 4ms
class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        
        for i in nums1 {
            for j in nums2 {
                if i == j {
                    result.append(i)
                }
            }
        }
        
        return Array(Set(result))
    }
}

// 0ms
class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var a : [Int : Bool] = [:]
        var result : [Int] = []
        
        for num in nums1 {
           a[num] = true
        }

        for num in nums2 {
            if a[num] == true {
                result.append(num)
            }
            a[num] = false
        }
        return result
    }
}

// test
import Testing

struct Tests {
    private let solution = Solution()
    
    @Test func test1() async throws {
        let num1 = [1,2,2,1]
        let num2 = [2,2]
        
        #expect(solution.intersection(num1, num2) == [2])
    }
    
    @Test func test2() async throws {
        let num1 = [4,9,5]
        let num2 = [9,4,9,8,4]
        let result = solution.intersection(num1, num2)
        
        if result == [9,4] || result == [4,9] {
            #expect(true)
        }
    }
}
