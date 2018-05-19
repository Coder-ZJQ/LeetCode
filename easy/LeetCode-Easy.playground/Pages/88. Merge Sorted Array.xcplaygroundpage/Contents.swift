//: [Previous](@previous)

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var index = 0
        for i in 0..<n {
            let num2 = nums2[i]
            for j in index..<nums1.count {
                if num2 <= nums1[j] {
                    nums1.insert(num2, at: j)
                    nums1.removeLast()
                    index = j
                    break
                } else if j == i + m {
                    nums1[j] = num2
                    break
                }
            }
        }
        nums1.replaceSubrange(m + n..<nums1.count, with: [Int](repeating: 0, count: nums1.count - n - m))
    }
}
var num1 = [-1,0,0,3,3,3,0,0,0]
Solution().merge(&num1, 6, [1,2,2], 3)
//: [Next](@next)
