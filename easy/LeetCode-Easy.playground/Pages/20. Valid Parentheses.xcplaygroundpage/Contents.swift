//: [Previous](@previous)

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = [Character]()
        let brackets: [Character: Character] = ["(": ")", "[": "]", "{": "}"];
        for char in s {
            switch char {
            case Character("("), Character("["), Character("{"):
                stack.append(char)
                
            case Character(")"), Character("]"), Character("}"):
                if stack.count == 0 {
                    return false
                }
                if let last = stack.last {
                    if let bracket = brackets[last] {
                        if char != bracket {
                            return false
                        } else {
                            stack.removeLast()
                        }
                    }
                }
            default:
                return false
            }
        }
        return stack.count == 0
    }
}
Solution().isValid("()[]{}")
//: [Next](@next)
