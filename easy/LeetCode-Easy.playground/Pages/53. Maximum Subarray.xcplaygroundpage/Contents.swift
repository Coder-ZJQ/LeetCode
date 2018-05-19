//: [Previous](@previous)

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums.reduce(0, +) }
        var answer = Int.min
        var sum = 0
        for i in 0..<nums.count {
            sum += nums[i]
            if nums[i] > sum {
                sum = nums[i]
            }
            if sum > answer {
                answer = sum
            }
        }
        return answer
    }
}
//: [Next](@next)
