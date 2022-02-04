class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dict = [Int : Bool]()
        for num in nums {
            if dict[num] != nil {
                dict.removeValue(forKey: num)
            } else {
                dict[num] = true
            }
        }
        return dict.first!.key
    }
}

print(Solution().singleNumber([4,1,2,1,2]))
