//: [Previous](@previous)
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if let headVal = head?.val {
            if let nextVal = head?.next?.val {
                if headVal == nextVal {
                    head?.next = head?.next?.next
                    return deleteDuplicates(head)
                }
            }
        }
        head?.next = deleteDuplicates(head?.next)
        return head
    }
}
//: [Next](@next)
