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
//


//func findStringIndex<T: Equatable>(of valueToFind: T, array: [T]) -> Int? {
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}
//
//print(findStringIndex(of: "bc", array: ["aa", "bc", "de", "fgh"]) ?? "no value")
//
//
//
//
//func multipleAnything<T>(hls: T, rhs: T) -> T where T: BinaryFloatingPoint {
//    return hls * rhs
//}
//
//print(multipleAnything(hls: 3.8, rhs: 3.5))
//print(multipleAnything(hls: 3, rhs: 3))
//
//infix operator **: MultiplicationPrecedence
//
//func **<T>(hls: T, rhs: T) -> T where T: BinaryFloatingPoint {
//    return hls * rhs
//}
//
//
//print(3.8 ** 3.5)


//import SwiftUI
//
//class EscapingViewModel: ObservableObject {
//    @Published var text: String = "안녕하세요"
//
//    func getData() {
//        let newData = downloadData2()
//
//        text = newData
//    }
//
//    func downloadData() -> String {
//        return "놔스닥입니다."
//    }
//
//    func downloadData2() -> String {
//        return "놔스닥입니다."
//    }
//}
//
//struct EscapingView: View {
//    @StateObject var ViewModel = EscapingViewModel()
//
//    var body: some View {
//        Text(ViewModel.text)
//            .font(Font.largeTitle.bold())
//            .foregroundColor(.yellow)
//            .onTapGesture {
//                ViewModel.getData()
//            }
//    }
//}

var completionHandler: [() -> Void] = []

class MyClass {
    var x = 10
    
    func callFunc() {
//        withoutEscaping { x = 200 }
        withEscaping { self.x = 100 }
        
    }
    
    var completionHandlers: [() -> Void] = []
    
    func withEscaping(completion: @escaping () -> Void) {
        completionHandler.append(completion)
    }
    
    func withoutEscaping(completion: () -> Void) {
        completion()
    }
}


let mc = MyClass()

mc.callFunc()
print(mc.x)     // 200

mc.completionHandlers.first?()
print(mc.x)    // 100
