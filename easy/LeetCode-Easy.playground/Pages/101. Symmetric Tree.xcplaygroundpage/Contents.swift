//: [Previous](@previous)


class Solution {
    func collectNode(_ node: TreeNode?, to values: inout [[Int]], level: Int) {
        if values.count - 1 < level {
            values.append([Int]())
        }
        if let root = node {
            values[level].append(root.val)
            collectNode(root.left, to: &values, level: level + 1)
            collectNode(root.right, to: &values, level: level + 1)
        } else {
            values[level].append(0)
        }
    }
    func isSymmetric(_ root: TreeNode?) -> Bool {
        var level = [[Int]]()
        collectNode(root, to: &level, level: 0)
        for vals in level {
            if vals != vals.reversed() {
                return false
            }
        }
        return true
    }
}

//: [Next](@next)
