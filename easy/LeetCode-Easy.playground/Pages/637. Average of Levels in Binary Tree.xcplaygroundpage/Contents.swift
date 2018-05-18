//: [Previous](@previous)

class Solution {
    func collectNode(_ node: TreeNode?, to values: inout [[Int]], level: Int) {
        if let root = node {
            if values.count - 1 < level {
                values.append([Int]())
            }
            values[level].append(root.val)
            collectNode(root.left, to: &values, level: level + 1)
            collectNode(root.right, to: &values, level: level + 1)
        }
    }
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var collectVal = [[Int]]()
        collectNode(root, to: &collectVal, level: 0)
        return collectVal.map({ nums -> Double in
            let sum = nums.reduce(0, +)
            return Double(sum) / Double(nums.count)
        })
    }
}

let t1 = TreeNode(1)
t1.left = {
    let t = TreeNode(3)
    t.left = TreeNode(5)
    return t
}()
t1.right = TreeNode(2)
Solution().averageOfLevels(t1)
Solution().averageOfLevels(t1)
//: [Next](@next)
