import Foundation
class Solution {
    func shortestToChar1(_ S: String, _ C: Character) -> [Int] {
        assert(S.contains(C), "C should be in string S")
        var result: [Int] = []
        for (index, char) in S.enumerated() {
            var offset = 1
            if char == C {
                result.append(0)
                continue
            }
            while true {
                if let rightIndex = index + offset < S.count ? S.index(S.startIndex, offsetBy: index + offset) : nil {
                    let rightChar = S[rightIndex]
                    if rightChar == C {
                        break
                    }
                }
                if let leftIndex = index - offset >= 0 ? S.index(S.startIndex, offsetBy: index - offset) : nil {
                    let leftChar = S[leftIndex]
                    if leftChar == C {
                        break
                    }
                }
                offset += 1
            }
            result.append(offset)
        }
        return result
    }
    func shortestToChar2(_ S: String, _ C: Character) -> [Int] {
        assert(S.contains(C), "C should be in string S")
        let subStrings = S.split(separator: C, omittingEmptySubsequences: false)
        var result: [Int] = []
        for (index, subString) in subStrings.enumerated() {
            if !subString.isEmpty {
                for i in 1...subString.count {
                    if index == 0 {
                        result.append(subString.count + 1 - i)
                    } else if index == subStrings.count - 1 {
                        result.append(i)
                    } else {
                        let mid = Int(ceilf(Float(subString.count) / 2.0))
                        let count = (i as Int) <= mid ? i : 2 * mid -  i + (subString.count % 2 == 1 ? 0 : 1)
                        result.append(count)
                    }
                }
            }
            if index != subStrings.count - 1 {
                result.append(0)
            }
        }
        return result
    }
}
//Solution().shortestToChar2("loveleetcode", Character("e"))
func findComplement(_ num: Int) -> Int {
    var number = num
    var result = 0
    var multi = 1
    while number != 0 {
        result += abs(1 - number % 2) * multi
        print(result)
        number = number / 2
        multi *= 2
    }
    return result
}
//findComplement(100)
func reverseString(_ s: String) -> String {
    return String(s.reversed())
}
//reverseString("sdfggssdfddddd")
func reverseWords(_ s: String) -> String {
    return s.split(separator: Character(" ")).map { String($0.reversed())}.joined(separator: " ")
}

//reverseWords("Let's take LeetCode contest")
func findWords(_ words: [String]) -> [String] {
    let set1 = Set("qwertyuiop")
    let set2 = Set("asdfghjkl")
    let set3 = Set("zxcvbnm")
    let wordSet = words.map { Set($0.lowercased()) }
    var result = [String]()
    for (index, set) in wordSet.enumerated() {
        if set.isSubset(of: set1) || set.isSubset(of: set2) || set.isSubset(of: set3){
            result.append(words[index])
        }
    }
    return result
}
//findWords(["Hello","Alaska","Dad","Peace"])
//func subdomainVisits(_ cpdomains: [String]) -> [String] {
//    var dict: [String: Int] = [:]
//    cpdomains.map { cpdomain -> [String: Int] in
//        let sub = cpdomain.split(separator: " ")
//        let countString = sub.first
//        let domainString = sub.last
//        var countDict: [String: Int] = [:]
//        if let countStr = sub.first {
//            if let count = Int(countStr) {
//                if let <#constant name#> = <#optional#> {
//                    <#statements#>
//                }
//            }
//        }
//
//        return countDict
//    }
//    return []
//}

func rotate(_ nums: inout [Int], _ k: Int) {
    assert(k >= 0, "k is non-negative.")
    if k % nums.count == 0 {
        return
    }
    let copyNums = nums
    for i in 0..<nums.count {
        nums[i] = copyNums[(nums.count + i - k % nums.count) % nums.count]
    }
}
//var nums = [1,2,6,5,3,7,3,8,5,3,2]

//func countPrimes(_ n: Int) -> Int {
//    guard n >= 2 else {
//        return 0
//    }
//
//    var isSeted = [Bool](repeating: false, count: n)
//    var isPrimeArray = [Bool](repeating: true, count: n)
//    isPrimeArray[0] = false
//    isPrimeArray[1] = false
//    var notPrime = 2
//
//    for i in 2..<n {
//        if !isPrimeArray[i] {
//            continue
//        }
//        if n / i >= 2 {
//            let top: Int = Int(ceil(Double(n) / Double(i)))
//            for j in 2..<top {
//                print(i * j)
//                if !isSeted[j * i] {
//                    isPrimeArray[j * i] = false
//                    isSeted[j * i] = true
//                    notPrime += 1
//                }
//            }
//        }
//    }
//    return n - notPrime
//}
//
//countPrimes(5)
//func lengthOfLongestSubstring(_ s: String) -> Int {
//    var begin = 0
//    var end = 0
//    for (i, char) in s.enumerated() {
//        let subStr = s[s.index(s.startIndex, offsetBy: begin)...s.index(s.startIndex, offsetBy: end)]
//        print(s)
//        if subStr.contains(char) {
//            begin = subStr.distance(from: subStr.startIndex, to: subStr.index(of: char)!)
//        } else {
//            end = i
//        }
//        print("begin:\(begin)" + " end:\(end)")
//    }
//    return end - begin
//}
//lengthOfLongestSubstring("abcfasdflsdjflsdjfsdklfjasldfjaslfj;asljdfklsdjfsdklfjskldfjlfabcbbabcfasdflsdjflsdjfsdklfjasldfjaslfj;asljdfklsdjfsdklfjskldfjlfabcbbabcfasdflsdjflsdjfsdklfjasldfjaslfj;asljdfklsdjfsdklfjskldfjlfabcbbabcfasdflsdjflsdjfsdklfjasldfjaslfj;asljdfklsdjfsdklfjskldfjlfabcbbabcfasdflsdjflsdjfsdklfjasldfjaslfj;asljdfklsdjfsdklfjskldfjlfabcbb123456789sdfsdf")

//func distributeCandies(_ candies: [Int]) -> Int {
//    assert(candies.count % 2 == 0,"candies even length")
//    let candySet = Set(candies)
//    if candySet.count > candies.count / 2 {
//        return candies.count / 2
//    }
//    return candySet.count
//}
//distributeCandies([1,2,3,4,5,1,2,3,4,5,6])

func fizzBuzz(_ n: Int) -> [String] {
    guard n > 0 else {
        return []
    }
    var answer = [String]()
    for i in 1...n {
        if i % 3 == 0 && i % 5 == 0 {
            answer.append("FizzBuzz")
        } else if i % 3 == 0 {
            answer.append("Fizz")
        } else if i % 5 == 0 {
            answer.append("Buzz")
        } else {
            answer.append("\(i)")
        }
    }
    return answer
}

func islandPerimeter(_ grid: [[Int]]) -> Int {
    guard grid.count > 0 else {
        return 0
    }
    let height = grid.count
    let width = grid[0].count
    var answer = 0
    for i in 0..<height {
        for j in 0..<width {
            let num = grid[i][j]
            if num == 1{
                answer += 4
                if j + 1 < width && grid[i][j + 1] == 1 {
                    answer -= 2
                }
                if i + 1 < height && grid[i + 1][j] == 1 {
                    answer -= 2
                }
            }
        }
    }
    return answer
}
//islandPerimeter([[0,1,0,0],
//                 [1,1,1,0],
//                 [0,1,0,0],
//                 [1,1,0,0]])
func calPoints(_ ops: [String]) -> Int {
    var stack = [Int]()
    for op in ops {
        switch op {
        case "+":
            if stack.count > 1 {
                stack.append(stack[stack.count - 1] + stack[stack.count - 2])
            }
        case "D":
            if let score = stack.last {
                stack.append(score * 2)
            }
        case "C":
            stack.removeLast()
        default:
            if let score = Int(op) {
                stack.append(score)
            }
        }
    }
    print(stack)
    return stack.reduce(0, +)
}
//calPoints(["5","-2","4","C","D","9","+","+"])
func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
    guard matrix.count > 0 else {
        return false
    }
    let height = matrix.count
    let width = matrix[0].count
    if height == 1 || width == 1 {
        return true
    }
    for i in 0..<width - 1 {
        var offset = 0
        var pre = matrix[offset][i + offset]
        while offset < height && i + offset < width{
            let val = matrix[offset][i + offset]
            if val != pre {
                return false
            }
            pre = val
            offset += 1
        }
    }
    for i in 1..<height - 1 {
        var offset = 0
        var pre = matrix[i + offset][offset]
        while offset < width && i + offset < height{
            let val = matrix[i + offset][offset]
            if val != pre {
                return false
            }
            pre = val
            offset += 1
        }
    }
    return true
}
//isToeplitzMatrix([[1,2,3,4],[5,1,2,3],[9,5,1,2]])

func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
    let count = nums.map({$0.count}).reduce(0, +)
    if count != r * c {
        return nums
    }
    let joined = nums.reduce([Int](), +)
    var answer = [[Int]]()
    for i in 0..<r {
        let sub = [Int](joined[i * c..<(i + 1) * c])
        print(sub)
        answer.append(sub)
    }
    return answer
}
//matrixReshape([[1,2],
//               [3,4]], 2, 2)

func toGoatLatin(_ S: String) -> String {
    let vowel = "aeiou".characters
    var words = S.split(separator: " ")
    for (index, word) in words.enumerated() {
        var copyWord = word
        if let first = word.lowercased().first {
            print(first)
            if vowel.contains(first) {
                copyWord += "ma"
            } else {
                let remove = copyWord.remove(at: copyWord.startIndex)
                copyWord += ("ma" + String(remove))
            }
            let aaa = [Character](repeating: "a", count: index + 1)
            copyWord += String(aaa)
            words[index] = copyWord
        }
    }
    return words.map({ String($0) }).joined(separator: " ")
}

toGoatLatin("I speak Goat Latin")
//rotate(&nums, 0)
//: [Previous](@previous)|
//: [Next](@next)

