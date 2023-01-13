//
//  main.swift
//  swift-local-dev
//
//  Created by wqy on 2023/1/12.
//

import Foundation

//print("Hello, World!")

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength;
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

//let test = Square(sideLength: 5.2, name: "test square")
//print(test.area())
//print(test.simpleDescription())

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var primeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(numberOfSides)"
    }
    
}

enum Rank: Int {
case ace = 1
case two, three, four, five, six, seven, eight, nine, ten
case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

//let ace = Rank.ace
//
//let aceRawValue = ace.rawValue
//
//print(ace)
//print(aceRawValue)
//
//if let convertedRank = Rank(rawValue: 3) {
//    let threeDesc = convertedRank.simpleDescription()
//    print(threeDesc)
//}

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:00pm")
let failure = ServerResponse.failure("Out of memory")

//switch success {
//case let .result(sunrise, sunset):
//    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
//case let .failure(msg):
//    print("Failure... \(msg)")
//}

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDesc() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

//let c = Card(rank: .three, suit: .spades)
//print(c.simpleDesc())

func fetchUserID(from server: String) async -> Int {
    if server == "primary" {
        return 98
    }
    return 500
}

func fetchUserName(from server: String) async -> String {
    let userid = await fetchUserID(from: server)
    if userid == 500 {
        return "John Appleseed"
    }
    return "Guest"
}

func connectUser(to server: String) async -> String {
    print(3)
    let userid = await fetchUserID(from: server)
//    print(4)
    let username = await fetchUserName(from: server)
//    print(userid)
//    print(username)
    return "Hello \(username), user id \(userid)"
}

func run() {
    print(1)
    Task {
        print(2)
        let t = await connectUser(to:"primary")
        print(t)
//        do {
//            try await Task.sleep(nanoseconds: 500_000_000)
//        } catch {
//
//        }
//        print(t)
    }
    
    Task {
        
    }
}

//run()

protocol ExampleProtocol {
    var simpleDesc: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDesc: String = "A very simple class."
    var anotherProperty: Int = 69105
    
    func adjust() {
        simpleDesc += "     Now 100%  adjusted"
    }
}

//var a = SimpleClass()
//a.adjust()
//let aDesc = a.simpleDesc
//print(aDesc)

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}



//do {
//    let printerResponse = try send(job: 1077, toPrinter: "Never Has Toner")
//    print(printerResponse)
//} catch {
//    print(error)
//}

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    
    defer {
        fridgeIsOpen = false
    }
    let ret = fridgeContent.contains(food)
    return ret
}
//print(fridgeContains("eggs"))
//print(fridgeIsOpen)

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var ret: [Item] = []
    for _ in 0..<numberOfTimes {
        ret.append(item)
    }
    return ret
}

//print(makeArray(repeating: 4, numberOfTimes: 4))

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

//var possibleInteger: OptionalValue<Int> = .none
//possibleInteger = .some(100)
//print(possibleInteger)

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
where T.Element: Equatable, T.Element == U.Element {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
print(anyCommonElements([1,2,3,4], [2]))
