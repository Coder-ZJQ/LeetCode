//: [Previous](@previous)
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let str = s.lowercased().filter({ "abcdefghijklmnopqrstuvwxyz0123456789".contains($0) })
        return str == String(str.reversed())
    }
}
Solution().isPalindrome("race a car")
//: [Next](@next)
