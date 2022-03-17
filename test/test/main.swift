//
//  main.swift
//  test
//
//  Created by Noah Park on 2022/03/14.
//

import Foundation

func swap(a: inout Double, b: inout Double) {
    let temp = a
    
    a = b
    b = temp
}

func swap(a: inout Int, b: inout Int) {
    let temp = a
    
    a = b
    b = temp
}
