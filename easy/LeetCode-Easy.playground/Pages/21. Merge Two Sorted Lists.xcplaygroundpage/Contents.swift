//: [Previous](@previous)

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if let node1 = l1 {
            if let node2 = l2 {
                if node1.val <= node2.val {
                    node1.next = mergeTwoLists(node2, node1.next)
                    return node1
                } else {
                    node2.next = mergeTwoLists(node1, node2.next)
                    return node2
                }
            } else {
                return node1
            }
        } else {
            return l2
        }
    }
}

//: [Next](@next)
