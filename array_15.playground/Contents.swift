class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else {
            return [[Int]]()
            
        }
        
        var result = [[Int]]()
        let nums = nums.sorted()
        
        for i in 0..<nums.count {
            if i > 0 && nums[i] == nums[i - 1] {
                continue
                
            }
            
            let num = 0 - nums[i]
            
            var n = i + 1
            var c = nums.count - 1
            while n < c {
                let nn = nums[n]
                let nc = nums[c]
                let sum = nn + nc
                if sum == num {
                    result.append([nums[i], nn, nc])
                    n += 1; c -= 1;
                    while n < c && nums[n] == nums[n - 1] {
                        n += 1
                    }
                    while n < c && nums[c] == nums[c + 1] {
                        c -= 1
                        
                    }
                } else {
                    sum > num ? c -= 1 : (n += 1)
                }
            }
        }
        return result
    }
}
