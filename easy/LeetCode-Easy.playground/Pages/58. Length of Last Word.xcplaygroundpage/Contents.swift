//: [Previous](@previous)

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        if let lastWord = s.split(separator: " ").last {
            return lastWord.count
        }
        return 0
    }
}
Solution().lengthOfLastWord("hello world")
//: [Next](@next)
