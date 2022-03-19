//
//  main.swift
//  test
//
//  Created by Noah Park on 2022/03/14.
//

import Foundation

func swap<Something>(a: inout Something , b: inout Something) {
    let temp = a
    
    a = b
    b = temp
}


var varA = "I'm A"
var varB = "I'm B"

swap(a: &varA, b: &varB)

print(varA, varB)
