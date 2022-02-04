import Foundation

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var newNums = nums.map { $0 * $0 }
        newNums.sort()
        return newNums
    }
}


print(Solution().sortedSquares([-7,-3,2,3,11]))
