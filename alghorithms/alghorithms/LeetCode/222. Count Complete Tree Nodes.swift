//Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
 
class Solution {
    func countNodes(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        
        return 1 + countNodes(root?.left) + countNodes(root?.right)
    }
}

// 테스트 코드
import Testing

struct Tests {
    private let solution = Solution()
    private let node1 =
    TreeNode(1,
    TreeNode(2,TreeNode(4),TreeNode(5)),
    TreeNode(3, TreeNode(6), nil)
    )
    private let node2 = TreeNode(1, nil, nil)
    
    @Test func test1() async throws {
        #expect(solution.countNodes(node1) == 6)
    }
    
    @Test func test2() async throws {
        #expect(solution.countNodes(nil) == 0)
    }
    
    @Test func test3() async throws {
        #expect(solution.countNodes(node2) == 1)
    }
}
