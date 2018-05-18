//: [Previous](@previous)

class Solution {
    func nextGreaterElement(_ findNums: [Int], _ nums: [Int]) -> [Int] {
        var answer = findNums
        if let max = nums.max() {
            for (index, num) in findNums.enumerated() {
                if num >= max {
                    answer[index] = -1
                    continue
                }
                var i = nums.index(of: num)!
//                print(i)
                var result = num
                while result <= num && i < nums.count{
                    result = nums[i]
                    i += 1
                }
                print(result)
                answer[index] = result > num ? result : -1
                
            }
        }
        return answer
    }
}

Solution().nextGreaterElement([4,6,5,9,1,2], [1,3,4,2,5,9,6,10])
//: [Next](@next)
