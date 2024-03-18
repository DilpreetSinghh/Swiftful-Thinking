import Foundation

// String variables
let apple: String = "Apple"
let orange: String = "Orange"

// String arrays
let fruits1: [String] = ["Apple", "Orange"]
let fruits2: [String] = [apple, orange]

// Array with generic type annotation
let fruits3: Array<String> = [apple, orange]

// Boolean array
let myBools: [Bool] = [true, false, true, true, true, false]

// Empty function
func doSomething(value: [String]) {
  // Function body to be implemented
}

// String array with literal
var fruitsArray: [String] = ["Apple", "Orange", "Banana", "Mango"]

// Getting array count
let count = fruitsArray.count

// Accessing array elements (assuming you want the first element)
print(fruitsArray[0]) // This will print "Apple"

// Adding elements in the end of array
fruitsArray.append(contentsOf: ["Papaya", "Mango"])
print (fruitsArray)

let firstIndex = fruitsArray.indices.first
let lastIndex = fruitsArray.indices.last

/*
    fruitsArray[9]
     error: Execution was interrupted, reason: EXC_BREAKPOINT
 What is the better way?
*/

fruitsArray.indices.contains(6)
if fruitsArray.indices.contains(5) {
    let fifthFruits = fruitsArray[5]
}

// Insert elements at a specific index
fruitsArray.insert(contentsOf: ["Watermelon", "Tangerine"], at: 2)

// Remove element at a specific index
fruitsArray.remove(at: 5)

// Print the modified array
print(fruitsArray)

// Remove all element
fruitsArray.removeAll()


// Arrays vs Sets

struct ProductModel {
    let title: String
    let price: Int
}


var myProducts: [ProductModel] = [
    ProductModel(title: "Product 1", price: 50),
    ProductModel(title: "Product 2", price: 5),
    ProductModel(title: "Product 3", price: 1),
    ProductModel(title: "Product 4", price: 50),
    ProductModel(title: "Product 5", price: 4),
    ProductModel(title: "Product 6", price: 50),
    ProductModel(title: "Product 7", price: 2),
]


// Array of fruits
var finalFruits: [String] = ["Apple", "Orange", "Banana", "Apple"]
print (finalFruits)

// Sets of fruits
var fruitsSet: Set<String> = ["Apple", "Orange", "Banana", "Apple"]
print(fruitsSet) // No repetition of "Apple"
// Sets aren't ordered
// Sets are in alphabetically ordered

