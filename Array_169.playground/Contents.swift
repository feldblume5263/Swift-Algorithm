class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int : Int]()
        for num in nums {
            if dict[num] != nil {
                dict[num] = dict[num]! + 1
            } else {
                dict[num] = 1
            }
        }
        var retKey: Int = 0
        var ret: Int = 0
        
        dict.map { (key, val) in
            retKey = val > ret ? key : retKey
            ret = val > ret ? val : ret
        }
        return retKey
    }
}

print(Solution().majorityElement([2,2,1,1,1,2,2]))
