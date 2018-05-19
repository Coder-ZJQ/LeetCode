//: [Previous](@previous)

class Solution {
    func countAndSay(_ n: Int) -> String {
        guard n > 1 else { return "1" }
        var current:Character?
        var result = ""
        var count = 0
        let pre = countAndSay(n - 1)
        for (index, char) in pre.enumerated() {
            if let currentChar = current {
                if currentChar == char {
                    count += 1
                } else {
                    result.append("\(count)")
                    result.append(currentChar)
                    current = char
                    count = 1
                }
            } else {
                current = char
                count += 1
            }
            if index == pre.count - 1 {
                result.append("\(count)")
                result.append(current!)
                return result
            }
        }
        return result
    }
}

print(Solution().countAndSay(10))
//: [Next](@next)
