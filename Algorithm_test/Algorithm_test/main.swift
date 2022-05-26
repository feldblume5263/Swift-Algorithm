//
//  main.swift
//  Algorithm_test
//
//  Created by Noah Park on 2022/05/26.
//

import Foundation

func quickSort<T: Comparable>(_ array: inout [T]) {
    guard array.count > 0 else { return }
    var smaller = Array<T>()
    var equal = Array<T>()
    var bigger = Array<T>()
    let pivot = array.first!
    for element in array {
        if element < pivot {
            smaller.append(element)
        } else if element == pivot {
            equal.append(element)
        } else {
            bigger.append(element)
        }
        quickSort(&smaller)
        quickSort(&bigger)
        array = smaller + equal + bigger
    }
}

var data = [12, 33, 43, 23, 34, 22, 12, 42, 43, 47, 21, 3, 1, 87, 54, 11]

quickSort(&data)
print(data)
