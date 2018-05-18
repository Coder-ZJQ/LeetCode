/*:
 ### 9. Palindrome Number
 [LeetCode](https://leetcode.com/problems/palindrome-number/description/)
 
 Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.\
 **Example 1:**
 ```
 Input: 121
 Output: true
 ```
 **Example 2:**
 ```
 Input: -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 ```
 **Example 3:**
 ```
 Input: 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 ```
 **Follow up:**\
 Coud you solve it without converting the integer to a string?
 */

class Solution {
    func isPalindrome1(_ x: Int) -> Bool {
        if x >= 0 && x <= Int.max{
            var ints: [Int] = [Int]()
            var exp = 10
            for _ in 0..<String(x).count {
                let int = x % exp / (exp / 10)
                ints.append(int)
                exp *= 10
            }
            for i in 0..<ints.count / 2 {
                let int1 = ints[i]
                let int2 = ints[ints.count - 1 - i]
                if int1 != int2 {
                    return false
                }
            }
            return true
        }
        return false
    }
    func isPalindrome2(_ x: Int) -> Bool {
        guard x >= 0 else {
            return false
        }
        var number = abs(x)
        var result = 0
        while number != 0 {
            result = result * 10 + number % 10
            number = number / 10
        }
        return result == x
    }
}
Solution().isPalindrome1(1212122)
Solution().isPalindrome2(1212121)
//: [Previous](@previous)|
//: [Next](@next)
