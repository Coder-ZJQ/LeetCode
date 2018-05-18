//: [Previous](@previous)

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        }
        if haystack.count < needle.count {
            return -1
        }
        for i in 0...(haystack.count - needle.count) {
            let startIndex = haystack.index(haystack.startIndex, offsetBy: i)
            let endIndex =  haystack.index(haystack.startIndex, offsetBy: i + needle.count)
            let substring = haystack[startIndex..<endIndex]
            if substring == needle {
                return i
            }
        }
        return -1
        
    }
}
Solution().strStr("a", "")
//: [Next](@next)
