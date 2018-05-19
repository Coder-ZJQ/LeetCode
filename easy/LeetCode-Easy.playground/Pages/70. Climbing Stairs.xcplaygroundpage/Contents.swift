//: [Previous](@previous)
class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 2 else {
            return n
        }
        var steps = [Int](repeating: 0, count: n + 1)
        steps[1] = 1
        steps[2] = 2
        for i in 3...n {
            steps[i] = steps[i - 1] + steps[i - 2]
        }
        return steps[n]
    }
}
Solution().climbStairs(3)
//: [Next](@next)
