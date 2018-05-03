/*:
 ### 1. Two Sum
 [LeetCode](https://leetcode.com/problems/two-sum/description/)\
 Given an array of integers, return **indices** of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have ***exactly*** one solution, and you may not use the same element twice.
 
 **Example**
 ````
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 ````
 */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var array: [Int] = [Int]()
        for (index0, num0) in nums.enumerated() {
            for index1 in index0 + 1..<nums.endIndex {
                let num1 = nums[index1]
                if num0 + num1 == target {
                    array.append(contentsOf: [index0, index1])
                    break
                }
            }
        }
        return array
    }
}
Solution().twoSum([2,7,11,15], 9)
//: [Previous](@previous)|
//: [Next](@next)
