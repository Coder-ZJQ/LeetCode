//: [Previous](@previous)

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }
        var pre: Int = nums.first!
        var index = 1
        while index < nums.count {
            let num = nums[index]
            if num == pre {
                nums.remove(at: index)
            } else {
                index += 1
                pre = num
            }
        }
        return nums.count
    }
}
var nums = [0,0,1,1,1,2,2,3,3,4]
Solution().removeDuplicates(&nums)
//: [Next](@next)
