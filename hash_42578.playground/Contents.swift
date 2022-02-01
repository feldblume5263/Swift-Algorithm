import Foundation

func solution(_ clothes:[[String]]) -> Int {
    let types = clothes.compactMap({ $0.last })
    let typeSet = Set(types)
    let categories = Array(typeSet)

    let counts = categories.map({ category in
        return clothes.filter({ $0.last == category }).count + 1
    })
    print(counts)
    return counts.reduce(1,  { $0 * $1 }) - 1
}


print (solution([["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"], ["shirts", "top"], ["pullover", "top"], ["jean", "bottom"], ["pants", "bottom"]]))
