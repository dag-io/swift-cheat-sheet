// Playground - noun: a place where people can play

import UIKit

var numbers = [1,2,3,4]

let updatedNumbers = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    
    return result
})


// Init  --------------------------------------
var emptyArray = Array<Int>()
var equivalentEmptyArray = [Int]()
let numericArray = Array(count: 3, repeatedValue: 42)


// Range  --------------------------------------
var subscriptableArray = ["zero", "one", "two", "three"]
let subRange = subscriptableArray[1...3]


// Insert  --------------------------------------
var array = [0, 1, 2]
array.insert(3, atIndex: 3)
// array.insert(3, atIndex: 4) Boom!

let constantArray = [1, 2, 3]
// constantArray.insert(0, atIndex: 0) Boom! Immutable


// Sort  --------------------------------------
let unsortedArray = [3, 2, 5, 1, 4]
let sortedArray = unsortedArray.sorted { $0 < $1 }
// sortedArray is [1, 2, 3, 4, 5]

let descendingArray = unsortedArray.sorted { $1 < $0 }
// descendingArray is [5, 4, 3, 2, 1]

array.sort { $0 < $1 }
array.sort({ (item1: Int, item2: Int) -> Bool in return item1 < item2 })
array.sort({ (item1, item2) -> Bool in return item1 < item2 })
array.sort({ (item1, item2) in return item1 < item2 })
array.sort { (item1, item2) in return item1 < item2 }
array.sort { return $0 < $1 }
array.sort(<)
array.sort(>)

array.sorted({ (a: Int, b: Int) -> Bool in
    return a > b
})
array.sorted({ (_, _) -> Bool in
    return false
})

array = [5, 1, 3, 4, 2, 6]
sort(&array) { $0 > $1 }
// array is [6, 5, 4, 3, 2, 1]



// Filter  --------------------------------------
array = [0, 1, 2, 3, 4, 5, 6, 7]
let filteredArray = array.filter { $0 % 2 == 0 }
filteredArray


// Map --------------------------------------
array = [0, 1, 2, 3]
let multipliedArray = array.map { $0 * 2 }
multipliedArray


// Reduce --------------------------------------
array = [1, 2, 3, 4, 5]
// Long way
let addResult1 = array.reduce(0, combine: { (previous: Int, current: Int) -> Int in
    return previous + current
})
addResult1
// Short way
let addResult2 = array.reduce(0) { $0 + $1 }
addResult2


// Chain
let words = [
    "car",
    "home",
    "blue",
    "glue"
]

let finalWords = words
    .filter { $0.hasSuffix("ue") }
    .map { $0.uppercaseString }
    .map { "Hello " + $0 }


// Operators --------------------------------------
array = [0, 1, 2, 3]
array += [4, 5, 6]

class Foo {}
class Bar : Foo {}

var arrayObj: [Foo] = [Foo]()
arrayObj += [Foo()]
arrayObj += [Bar()]

// Array from string
var components = "~/Documents/Swift".pathComponents
components += ["test"]







