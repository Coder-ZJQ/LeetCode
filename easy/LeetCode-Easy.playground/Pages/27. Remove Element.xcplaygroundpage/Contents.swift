//: [Previous](@previous)
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var index = 0
        while index < nums.count {
            let num = nums[index]
            if num == val {
                nums.remove(at: index)
            } else {
                index += 1
            }
        }
        return nums.count
    }
}
//: [Next](@next)
