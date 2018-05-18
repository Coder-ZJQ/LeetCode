/*:
 ### 797. All Paths From Source to Target
 
 [LeetCode](https://leetcode.com/problems/all-paths-from-source-to-target/description/)
 
 Given a directed, acyclic graph of `N` nodes.  Find all possible paths from node `0` to node `N-1`, and return them in any order.
 
 The graph is given as follows:  the nodes are 0, 1, ..., graph.length - 1.  graph[i] is a list of all nodes j for which the edge (i, j) exists.
 
 ```
 Example:
 Input: [[1,2], [3], [3], []]
 Output: [[0,1,3],[0,2,3]]
 Explanation: The graph looks like this:
 0--->1
 |    |
 v    v
 2--->3
 There are two paths: 0 -> 1 -> 3 and 0 -> 2 -> 3.
 ```
 
 **Note:**
 
 - The number of nodes in the graph will be in the range `[2, 15]`.
 - You can print different paths in any order, but you should keep the order of nodes inside one path.
 */
class Solution {
    func findPath(_ graph: [[Int]], _ node: Int) -> [[Int]] {
        var result = [[Int]]()
        if node == graph.count - 1 {
            let path = [Int](arrayLiteral: node)
            result.append(path)
            return result
        }
        
        for index in graph[node] {
            for path in findPath(graph, index) {
                var tempPath = path
                tempPath.insert(node, at: 0)
                result.append(tempPath)
            }
        }
        return result
    }
    func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
        assert(graph.count > 1 && graph.count < 16, "The number of nodes in the graph should be in the range [2, 15]")
        return findPath(graph, 0)
    }
}

Solution().allPathsSourceTarget([[4,7],[],[],[6],[3,5],[6,7],[7],[]])
//: [Previous](@previous)|
//: [Next](@next)
