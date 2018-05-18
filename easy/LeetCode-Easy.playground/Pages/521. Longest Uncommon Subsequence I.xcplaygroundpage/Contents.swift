//: [Previous](@previous)
import UIKit
class Solution {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        if a == b {
            return -1
        }
        return max(a.count, b.count)
    }
}
//let rect: CGRect = (CGFloat(1), CGFloat(1), CGFloat(1), CGFloat(1))

let foo = (a:1, b:2, c:3)
var bar: (Int, Int)
bar = (1, 2)
print(foo.a)
print(bar.0)

//: [Next](@next)
