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

//let solution = Solution().mergeTrees(t1, t2)
//print(treeValue(t2))

var arr1: [TreeNode] = [TreeNode(1)]
let arr2: [TreeNode] = [TreeNode]()
arr1 += arr2
print(arr1)

func trimBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> TreeNode? {
    guard root != nil else {
        return nil
    }
    let copyNode = root
    if copyNode!.val >= L && copyNode!.val <= R {
        copyNode?.left = trimBST(copyNode?.left, L, R)
        copyNode?.right = trimBST(copyNode?.right, L, R)
    } else {
        if let node = trimBST(copyNode?.right, L, R) {
            return node
        }
        if let node = trimBST(copyNode?.left, L, R) {
            return node
        }
        return nil
    }
    return copyNode
}

//: [Previous](@previous)|
//: [Next](@next)
