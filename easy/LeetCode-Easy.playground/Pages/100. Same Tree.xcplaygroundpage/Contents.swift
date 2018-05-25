//: [Previous](@previous)

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var sameVal = false
        if let pval = p?.val {
            if let qval = q?.val {
                if pval == qval {
                    sameVal = true
                }
            }
        } else if q == nil {
            sameVal = true
        }
        return sameVal && isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
    }
}


//: [Next](@next)
