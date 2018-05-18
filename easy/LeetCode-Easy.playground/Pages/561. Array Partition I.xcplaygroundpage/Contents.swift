/*:
 ### 561. Array Partition I
 [LeetCode](https://leetcode.com/problems/array-partition-i/description/)
 
 Given an array of **2n** integers, your task is to group these integers into **n** pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which makes sum of min(ai, bi) for all i from 1 to n as large as possible.
 
 **Example 1:**
 
 ```
 Input: [1,4,3,2]
 
 Output: 4
 Explanation: n is 2, and the maximum sum of pairs is 4 = min(1, 2) + min(3, 4).
 ```
 
 **Note:**
 
 1. **n** is a positive integer, which is in the range of [1, 10000].
 2. All the integers in the array will be in the range of [-10000, 10000].
 */
class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        if nums.count % 2 != 0 {
            assertionFailure("nums isn't an array of 2n integers")
        }
        let sortNums = nums.sorted(by: <)
        var result = 0
        for index in 0..<sortNums.count / 2 {
            result += sortNums[index * 2]
        }
        return result
    }
}
Solution().arrayPairSum([1,4,3,2,2,1,5,7])
//: [Previous](@previous)|
//: [Next](@next)
