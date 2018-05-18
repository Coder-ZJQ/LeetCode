//: [Previous](@previous)

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        for (index, num) in nums.enumerated() {
            if num >= target {
                return index
            }
        }
        return nums.count
    }
}
//: [Next](@next)
