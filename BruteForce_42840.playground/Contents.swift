import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var counts = [0, 0, 0]
    let BAns = [1, 3, 4, 5]
    let CAns = [3, 1, 2, 4, 5]

    for idx in 0 ... answers.count - 1 {

        if answers[idx] == (idx % 5) + 1 {
            counts[0] += 1
        }

        if idx % 2 == 0 {
            if answers[idx] == 2 {
                counts[1] += 1
            }
        } else if answers[idx] == BAns[Int((idx % 8) / 2)] {
            counts[1] += 1
        }

        if answers[idx] == CAns[Int((idx / 2)) % 5] {
            counts[2] += 1
        }
    }
    var ret = [Int]()
    let max = counts.max()
    for idx in 0 ..< counts.count {
        if counts[idx] == max {
            ret.append(idx + 1)
        }
    }
    return ret
}

//func solution(_ answers:[Int]) -> [Int] {
//    let answer = (
//        a: [1, 2, 3, 4, 5], // index % 5
//        b: [2, 1, 2, 3, 2, 4, 2, 5], // index % 8
//        c: [3, 3, 1, 1, 2, 2, 4, 4, 5, 5] // index % 10
//    )
//    var point = [1:0, 2:0, 3:0]
//
//    for (i, v) in answers.enumerated() {
//
//        if v == answer.a[i % 5] { point[1] = point[1]! + 1 }
//        if v == answer.b[i % 8] { point[2] = point[2]! + 1 }
//        if v == answer.c[i % 10] { point[3] = point[3]! + 1 }
//    }
//
//    return point.sorted{ $0.key < $1.key }.filter{ $0.value == point.values.max() }.map{ $0.key }
//}



print(solution([1, 3, 2, 4, 2]))
