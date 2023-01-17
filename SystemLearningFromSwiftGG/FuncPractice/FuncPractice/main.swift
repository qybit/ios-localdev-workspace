//
//  main.swift
//  FuncPractice
//
//  Created by wqy on 2023/1/13.
//

import Foundation

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}
//print(greetAgain(person: "Anna"))
// 打印“Hello again, Anna!”

func findMinAndMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }
    var cmin = array[0], cmax = array[0];
    for val in array[1..<array.count] {
        if val < cmin {
            cmin = val
        }
        if val > cmax {
            cmax = val
        }
    }
    return (cmin, cmax)
}
//
//if let bounds = findMinAndMax(array: [8, -6, 2, 109, 3, 71]) {
//    print(bounds)
//}

func greeting(for person: String) -> String {
    "Hello, " + person + "!"
}

//print(greeting(for: "John Sparrow"))

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

//print(arithmeticMean(1, 2, 3, 4, 5))
//print(arithmeticMean(3, 8.25, 18.75))

func printMathRet(_ cal: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("printMathRet: \(cal(a, b))")
}
func addTwoNums(_ a: Int, _ b: Int) -> Int {
    return a + b
}
//printMathRet(addTwoNums(_:_:), 10, 8)

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map {
    (number) -> String in
    var num = number
    var output = ""
    while num > 0 {
        output = digitNames[num % 10]! + output
        num /= 10
    }
    return output
}

//print(strings)

var completionHandlers: [() -> Void] = []
func someFuncWithEscapingClosure(completionhandler: @escaping () -> Void) {
    completionHandlers.append(completionhandler)
}
someFuncWithEscapingClosure {
    print("123")
}
//for handler in completionHandlers {
//    handler()
//}

func someFunctionWithNonescapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithNonescapingClosure {
            self.x = 100
        }
        someFunctionWithNonescapingClosure {
            x = 200
        }
    }
}

let instance = SomeClass()
instance.doSomething()
//print(instance.x)
//completionHandlers.first?()
enum Beverage: CaseIterable {
    case coffee, tea, juice
}

@propertyWrapper
struct TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}

struct SmallRectangle {
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()
//print(rectangle.height)

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // 什么也不做——因为车辆不一定会有噪音
    }
}

class Bicycle: Vehicle {
    var hasBasket = false
    
    override func makeNoise() {
        print("Choo Choo")
    }
}

let bicyle = Bicycle()
bicyle.makeNoise()

class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}
