/*:
 ### 14. Longest Common Prefix
 [LeetCode](https://leetcode.com/problems/longest-common-prefix/description/)
 
 Write a function to find the longest common prefix string amongst an array of strings.
 
 If there is no common prefix, return an empty string `""`.
 
 **Example 1:**
 
 ```
 Input: ["flower","flow","flight"]
 Output: "fl"
 ```
 
 **Example 2:**
 
 ```
 Input: ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 ```
 
 **Note:**
 
 All given inputs are in lowercase letters `a-z`.
 */
class Solution {
    func longestCommonPrefix1(_ strs: [String]) -> String {
        let length = strs.map { return $0.count }
        var offset = 0
        if let minLength = length.min() {
            for index in 0..<minLength {
                var preChar: Character?
                var isSame = true
                for str in strs {
                    let char = str[str.index(str.startIndex, offsetBy: index)]
                    if let pChar = preChar {
                        if pChar != char {
                            isSame = false
                            break
                        }
                    } else {
                        preChar = char
                    }
                }
                if !isSame {
                    break
                }
                offset += 1
            }
            print(offset)
            let str = strs.first!
            return String(str[str.startIndex..<str.index(str.startIndex, offsetBy: offset)])
        } else {
            return ""
        }
    }
    func longestCommonPrefix2(_ strs: [String]) -> String {
        var answer = ""
        if let firstStr = strs.first {
            for offset in 0..<firstStr.count {
                let prefix = String(firstStr[firstStr.startIndex...firstStr.index(firstStr.startIndex, offsetBy: offset)])
                for str in strs[strs.index(0, offsetBy: 1)..<strs.endIndex] {
                    if !str.hasPrefix(prefix) {
                        return answer
                    }
                }
                answer = prefix
            }
        }
        return answer
        
    }
    
}
Solution().longestCommonPrefix1(["flower","flow","flight"])
Solution().longestCommonPrefix2(["flower","flow","flight"])
/*:
 **Submissions:**
 1. longestCommonPrefix1: 52 ms
 2. longestCommonPrefix2: 36 ms
 */
//: [Previous](@previous)|
//: [Next](@next)
