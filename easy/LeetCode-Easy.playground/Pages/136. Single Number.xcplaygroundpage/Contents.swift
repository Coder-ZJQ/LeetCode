//: [Previous](@previous)

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        let set = Set(nums)
        let setSum = set.reduce(0, +)
        let numSum = nums.reduce(0, +)
        return setSum * 2 - numSum
    }
}
//: [Next](@next)
