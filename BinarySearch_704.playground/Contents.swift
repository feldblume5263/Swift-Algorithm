import UIKit

class Solution {
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            let val = nums[mid]
            if val == target {
                return mid
            } else if val > target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        return -1
    }
}


print(Solution().search([1, 2, 3, 4, 5, 6, 7, 8], 3))
