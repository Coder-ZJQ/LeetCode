
class Solution {
    func character2int(char: Character) -> Int {
        for num in char.unicodeScalars {
            return Int(num.value)
        }
        return 0
    }
    func partitionLabels(_ S: String) -> [Int] {
        
        let chars = S.characters
        var countArray = "abcdefghijklmnopqrstuvwxyz".map { (c) -> Int in
            return 0
        }
        for char in chars {
            countArray[character2int(char: char) - 97] += 1
        }
        var count = 0
        var result = [Int]()
        for (i, char) in chars.enumerated() {
//            let charCount = countArray[character2int(char: char) - 97]
            let index = S.index(after: S.index(S.startIndex, offsetBy: i))
            let left = S[S.startIndex..<S.index(before: index)]
            let right = S[index..<S.endIndex]
            print(left + " " + right)
            let leftSet = Set(left)
            let rightSet = Set(right)
            let union = leftSet.intersection(rightSet)
            count += 1
            if union.count == 0 {
//                print(i)
            }
        }
        return result
    }
}
Solution().partitionLabels("zababcbacadefegdehijhklij")
//: [Previous](@previous)|
//: [Next](@next)

