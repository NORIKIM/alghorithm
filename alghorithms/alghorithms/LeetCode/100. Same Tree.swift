public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard p != nil || q != nil else { return true }
        guard let p = p, let q = q else { return false }
        
        return p.val == q.val && isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
    }
}

// test
import Testing

struct Tests {
    private let solution = Solution()
    
    @Test func test1() async throws {
        #expect(solution.isSameTree(TreeNode(1, TreeNode(2), TreeNode(3)),
                                    TreeNode(1, TreeNode(2), TreeNode(3))) == true)
    }
    
    @Test func test2() async throws {
        #expect(solution.isSameTree(TreeNode(1, TreeNode(2), nil),
                                    TreeNode(1, nil, TreeNode(2))) == false)
    }
    
    @Test func test3() async throws {
        #expect(solution.isSameTree(TreeNode(1, TreeNode(2), TreeNode(1)),
                                    TreeNode(1, TreeNode(1), TreeNode(2))) == false)
    }
}
