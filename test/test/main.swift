//
//  main.swift
//  test
//
//  Created by Noah Park on 2022/03/14.
//

import Foundation

//func address(of object: UnsafeRawPointer) -> String{
//    let address = Int(bitPattern: object)
//    return String(format: "%p", address)
//}
//
//func swapTwoValues<T>(a: inout T, b: inout T) {
//    var temporaryA = a
//    print("In Function")
//    print("------------")
//    print("a:", address(of: &a))
//    print("temp:", address(of: &temporaryA))
//    a = b
//    print("a:", address(of: &a))
//    print("b:", address(of: &b))
//    b = temporaryA
//    print("b:", address(of: &b))
//    print("temp:", address(of: &temporaryA))
//    print("------------")
//}
//
//
//
//var a = "abc"
//var b = "cde"
//print("Before call function")
//print("------------")
//print("a: ", address(of: &a))
//print("b: ", address(of: &b))
//print("------------")
//swapTwoValues(a: &a, b: &b)
//print("After call function")
//print("------------")
//print("a: ", address(of: &a))
//print("b: ", address(of: &b))
//print("------------")


func findStringIndex<T>(array: [T], valueToFind: T) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

print(findStringIndex(array: ["aa", "bc", "de", "fgh"], valueToFind: "a"))
