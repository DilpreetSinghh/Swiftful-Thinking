import Foundation

// Constant
let someConstant: Bool = true

// Variable
var someVariable: Bool = true

// Can't asign or change the let value after initialisation
// someConstant = false
// above line throws an error

someVariable = false



var myNumber: Double = 1.1234
print(myNumber)
myNumber = 2
print(myNumber)
myNumber = 234870234
print(myNumber)
myNumber = 1
print(myNumber)
myNumber = 458
print(myNumber)



var userIsPremium: Bool = true

if userIsPremium == true {
    print("User has premium account")
}

if !userIsPremium {
    print("User has no premium account")
}
