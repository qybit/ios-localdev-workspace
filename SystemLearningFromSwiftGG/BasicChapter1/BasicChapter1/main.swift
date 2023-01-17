//
//  main.swift
//  BasicChapter1
//
//  Created by wqy on 2023/1/13.
//  Web URL:https://swiftgg.gitbook.io/swift/swift-jiao-cheng/01_the_basics

import Foundation

func makeArray(repeat rpt: Int, val v: Int) -> [Int] {
    var ret: [Int] = []
    for _ in 0...rpt {
        ret.append(v)
    }
    return ret
}

//var nums = makeArray(repeat: 10, val: 99)
//for num in nums[...3] {
//    print(num)
//}

//let range = ...10
//
//print(range.contains(10))

//let sparklighter = "\u{1F496} dog cow \u{2665}"
//for c in sparklighter {
//    print(c)
//}
//let c: Character = "a"
//print(c)

//let greeting2World = "Hello World!"
//
//for index in greeting2World.indices {
//    print(greeting2World[index])
//}

//var welcome = "hello"
//welcome.insert(contentsOf: "world!", at: welcome.endIndex)
//print(welcome)
//welcome.insert(contentsOf: "LOL", at: welcome.endIndex)
//print(welcome)
//welcome.remove(at: welcome.index(welcome.startIndex, offsetBy: 4))
//print(welcome)
//
//welcome = String(welcome[...welcome.index(welcome.startIndex, offsetBy: 8)])
//print(welcome)

//let romeoAndJuliet = [
//    "Act 1 Scene 1: Verona, A public place",
//    "Act 1 Scene 2: Capulet's mansion",
//    "Act 1 Scene 3: A room in Capulet's mansion",
//    "Act 1 Scene 4: A street outside Capulet's mansion",
//    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
//    "Act 2 Scene 1: Outside Capulet's mansion",
//    "Act 2 Scene 2: Capulet's orchard",
//    "Act 2 Scene 3: Outside Friar Lawrence's cell",
//    "Act 2 Scene 4: A street in Verona",
//    "Act 2 Scene 5: Capulet's mansion",
//    "Act 2 Scene 6: Friar Lawrence's cell"
//]
//var count = 0
//for scene in romeoAndJuliet {
//    if scene.hasPrefix("Act 1") {
//        count += 1
//    }
//}
//print(count)

//var arr1 = Array(repeating: 2.0, count: 3)
//var arr2 = Array(repeating: 3.3, count: 4)
//var arr3 = arr1 + arr2
////print(arr3)
//
//var shoppingList: [String] = ["Eggs", "Milk"]
//
//shoppingList += ["Baking Powder"]
////shoppingList[0...2] = ["Bananas", "Orange"]
//for (index, value) in shoppingList.enumerated() {
//    print("Item \(String(index + 1)): \(value)")
//}

//var letters = Set<Character>()
////print("letters is of type Set<Character> with \(letters.count) items.")
//letters.insert("a")
//print(letters)
//letters = []
//print(letters)

//var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
//if favoriteGenres.isEmpty {
//    print("As far as music goes, I'm not picky.")
//} else {
//    print("I have particular music preferences.")
//}
// 打印“I have particular music preferences.”
//favoriteGenres.insert("Jazz")

//print(favoriteGenres.sorted())

//let oddDigits: Set = [1, 3, 5, 7, 9]
//let evenDigits: Set = [0, 2, 4, 6, 8]
//let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
//
//print(oddDigits.union(evenDigits).sorted())
//print(oddDigits.intersection(evenDigits).sorted())
//print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
//print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
//
//let houseAnimals: Set = ["🐶", "🐱"]
//let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
//let cityAnimals: Set = ["🐦", "🐭"]
//
//print(houseAnimals.isSubset(of: farmAnimals))
//print(farmAnimals.isSuperset(of: houseAnimals))
//print(farmAnimals.isDisjoint(with: cityAnimals))

//var counter: [Int: String] = [:]
//counter[10] = "apple"
//print(counter)
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
print([String](airports.keys))
print([String](airports.values))

