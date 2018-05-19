//: [Previous](@previous)

class Solution {
    func mySqrt(_ x: Int) -> Int {
//        double x=a,y=0.0;
//        while(fabs(x-y)>0.00001){
//            y=x;
//            x=0.5*(x+a/x);
//        }
//        return x;
        var answer:Double = Double(x)
        var cmp = 0.0
        while abs(answer - cmp) > 0 {
            cmp = answer
            answer = (answer + Double(x) / answer) / 2.0
        }
        return Int(answer)
    }
}
Solution().mySqrt(10)
//: [Next](@next)
