/*:
 ### 461. Hamming Distance
 [LeetCode](https://leetcode.com/problems/hamming-distance/description/)
 
 The [Hamming distance](https://en.wikipedia.org/wiki/Hamming_distance) between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers `x` and `y`, calculate the Hamming distance.
 
 **Note:**
 0 ≤ `x`, `y` < 2<sup>31</sup>.
 
 **Example:**
 
 ```
 Input: x = 1, y = 4
 
 Output: 2
 
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
        ↑   ↑
 
 The above arrows point to positions where the corresponding bits are different.
 ```
 
 
 */

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var z = x ^ y
        var result = 0
        while z != 0 {
            if z % 2 == 1 {
                result += 1
            }
            z = z / 2
        }
        return result
    }
}
Solution().hammingDistance(1, 4)
//: [Previous](@previous)|
//: [Next](@next)
