//: [Previous](@previous)

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var answer = digits
        var index = digits.count - 1
        while index >= 0 {
            let sum = digits[index] + 1
            if sum < 10 {
                answer[index] = sum
                return answer
            } else {
                answer[index] = 0
                if index == 0 {
                    answer.insert(1, at: 0)
                }
            }
            index -= 1
        }
        return answer
    }
}
Solution().plusOne([0])
//: [Next](@next)
