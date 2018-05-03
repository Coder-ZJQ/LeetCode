/*:
 ### 7. Reverse Integer
 [LeetCode](https://leetcode.com/problems/reverse-integer/description/)\
 Given a 32-bit signed integer, reverse digits of an integer.
 
 **Example 1:**
 ```
 Input: 123
 Output: 321
 ```
 **Example 2:**
 ```
 Input: -123
 Output: -321
 ```
 **Example 3:**
 ```
 Input: 120
 Output: 21
 ```
 **Note:**\
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−2<sup>31</sup>,  2<sup>31</sup> − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 */
class Solution {
    func reverse1(_ x: Int) -> Int {
        if x > Int32.max || x < Int32.min {
            return 0
        }
        var string = String(x)
        var ten = x > 0 ? 1 : -1
        var result = 0
        for (_, element) in string.characters.enumerated() {
            if let number = Int(String(element)) {
                result += number * ten
                ten *= 10
            }
        }
        if result > Int32.max || result < Int32.min {
            return 0
        }
        return result
    }
    func reverse2(_ x: Int) -> Int {
        if x > Int32.max || x < Int32.min {
            return 0
        }
        var number = abs(x)
        var nums = [Int]()
        while number != 0 {
            nums.append(number % 10)
            number = number / 10
        }
        var result = 0
        var multi = 1
        for num in nums.reversed() {
            result += num * multi
            multi *= 10
        }
        if result > Int32.max || result < Int32.min {
            return 0
        }
        return result * (x < 0 ? -1 : 1)
    }
    func reverse3(_ x: Int) -> Int {
        if x > Int32.max || x < Int32.min {
            return 0
        }
        var number = abs(x)
        var nums = [Int]()
        while number != 0 {
            nums.append(number % 10)
            number = number / 10
        }
        var result = 0
        var multi = 1
        let count = nums.count
        for index in 0..<count {
            result += nums[count - index - 1] * multi
            multi *= 10
        }
        if result > Int32.max || result < Int32.min {
            return 0
        }
        return result * (x < 0 ? -1 : 1)
    }
    func reverse4(_ x: Int) -> Int {
        if x > Int32.max || x < Int32.min {
            return 0
        }
        var number = x
        var result = 0
        while number != 0 {
            result = result * 10 + number % 10
            number = number / 10
        }
        if result > Int32.max || result < Int32.min {
            return 0
        }
        return result
    }
}
Solution().reverse1(-1011)
Solution().reverse2(-1011)
Solution().reverse3(-1011)
Solution().reverse4(-1011)
/*:
 **Submissions:**
 1. reverse1: 40 ms
 2. reverse2: 32 ms
 3. reverse3: 28 ms
 4. reverse4: 28 ms
 */
//: [Previous](@previous)|
//: [Next](@next)
