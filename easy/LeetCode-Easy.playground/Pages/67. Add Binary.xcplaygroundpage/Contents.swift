//: [Previous](@previous)

class Solution {
    
    func char2int(_ c:Character) -> UInt32 {
        for s in c.unicodeScalars {
            return s.value - 48
        }
        return 0
    }
    
    func addBinary(_ a: String, _ b: String) -> String {
        var index = 0
        let count = max(a.count, b.count)
        guard index >= 0 else {
            return a.count > index ? a : b
        }
        var extra: UInt32 = 0
        var chars:[String] = [String]()
        
        while index < count {
            let numA = index < a.count ? char2int(a[a.index(a.endIndex, offsetBy: -(index + 1))]) : 0
            let numB = index < b.count ? char2int(b[b.index(b.endIndex, offsetBy: -(index + 1))]) : 0
            let sum = numA + numB + extra
            extra = sum / 2
            chars.insert("\(sum % 2)", at: 0)
            if index == count - 1 && extra == 1{
                chars.insert("1", at: 0)
            }
            index += 1
        }
        
        return chars.reduce("", +)
    }
}
//10101010
//  100100
//1110
Solution().addBinary("11", "1")
//: [Next](@next)
