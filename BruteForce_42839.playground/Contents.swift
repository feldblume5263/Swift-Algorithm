import Foundation


func combinations(_ array: [String]) -> Set<String> {
    if array.count == 0 { return [] }

    let answerArray = (0..<array.count).flatMap { i -> [String] in
        var removedArray = array
        let elem = removedArray.remove(at: i)
        return [elem] + combinations(removedArray).map { elem + $0 }
    }

    return Set(answerArray)
}

func isPrime(_ target: Int) -> Bool {
    guard target > 1 else { return false }
    for num in 2 ..< target {
        if target % num == 0 {
            return false
        }
    }
    return true
}

func solution(_ numbers: String) -> Int {
    let array = Array(numbers).map{ String($0) }
    let intSet = Set(combinations(array).compactMap { Int($0) })
    return intSet.filter{ isPrime($0) }.count
}

print(solution("19"))
