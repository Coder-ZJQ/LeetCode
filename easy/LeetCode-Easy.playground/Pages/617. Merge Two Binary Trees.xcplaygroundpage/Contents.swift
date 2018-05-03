/*:
 
 */
import Foundation
class Solution {
    func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
        if t1 == nil {
            return t2
        }
        if t2 == nil {
            return t1
        }
        t1?.val = t1!.val + t2!.val
        t1?.left = mergeTrees(t1?.left, t2?.left)
        t1?.right = mergeTrees(t1?.right, t2?.right)
        return t1
    }
}

func treeValue(_ t: TreeNode?) -> [String] {
    var vals = [String]()
    guard t != nil else {
        return ["null"]
    }
    vals.append("\(t!.val)")
    if t!.left != nil || t!.right != nil {
        vals.append(contentsOf: treeValue(t?.left))
        vals.append(contentsOf: treeValue(t?.right))
    }
    return vals
}

let t1 = TreeNode(1)
t1.left = {
    let t = TreeNode(3)
    t.left = TreeNode(5)
    return t
}()
t1.right = TreeNode(2)

let t2 = TreeNode(2)
t2.left = {
    let t = TreeNode(1)
    t.right = TreeNode(4)
    return t
}()
t2.right = {
    let t = TreeNode(3)
    t.right = TreeNode(7)
    return t
}()

let solution = Solution().mergeTrees(t1, t2)
print(treeValue(t2))
//: [Previous](@previous)|
//: [Next](@next)
