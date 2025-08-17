class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var dic = [Int:Int]()
        
        for i in 0 ..< nums.count {
            dic.updateValue(i, forKey: nums[i])
        }
        
        return dic[target] == nil ? -1 : dic[target]!
    }
}

// 다른 사람 코드
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        // define a left at index 0
        var left = 0

        // define a right at index nums.count - 1
        var right = nums.count - 1

        // while left < right, compute mid index
        while left <= right {
            let mid = left + Int((right-left)/2)
            
            if nums[mid] == target {
                // check if mid index is target
                return mid
            } else if nums[mid] > target {
                // if mid value is greater than target, right = mid - 1
                right = mid - 1
            } else {
                // else left = mid + 1
                left = mid + 1
            }
        }

        // if nothing else return -1
        return -1
    }
}
