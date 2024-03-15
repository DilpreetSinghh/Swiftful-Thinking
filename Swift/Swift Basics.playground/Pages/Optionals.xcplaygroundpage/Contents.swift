import Foundation

// There is always a value and it is a Boolean
let myBool: Bool? = false

// We don't know if there is a value, but if there is, it is a Boolean
var myOtherBool: Bool? = nil
print(myOtherBool)

myOtherBool = true
print(myOtherBool)

myOtherBool = false
print(myOtherBool)



//----------------------------------------------------------------------------



// ?? means nil coalescing operator
let newValue: Bool? = myOtherBool

/*  
    We can't assign optional value to non optional value
    let newValue2: Bool = myOtherBool
 */

let newValue2: Bool = myOtherBool ?? false
// newValue2 == myOtherBool(When myOtherBool has any value) otherwise newValue2 == false (default value)
print("New value 2: \(newValue2.description)")



//-----------------------------------------------------------------------------------




var myString: String? = "Hello Children!"
print(myString ?? "There is no value!")

myString = "New Text is here!"
print(myString ?? "There is no value!")

myString = nil
print(myString ?? "There is no value!")

let newString = myString ?? "Some default value"




//-----------------------------------------------------------------------------------




var userIsPremium: Bool? = nil

func checkIfUserIsPremium() -> Bool? {
    return userIsPremium
}

func checkIfUserIsPremium2() -> Bool {
    return userIsPremium ?? false
}
let isPremium = checkIfUserIsPremium2()


// IF LET

//  When if-let is successful, enter the closure
func checkIfUserIsPremium3() -> Bool {
    
    // If there is a value (in userIsPremium).
    // let newValue == that value(true or false)
    
    if let newValue = userIsPremium {
        // Here we have access to non optional value (newValue)
        return newValue
    } else {
        return false
    }
}


// Same functionality
func checkIfUserIsPremium4() -> Bool {
    if let newValue = userIsPremium {
        return newValue
    }
    return false
}


func checkIfUserIsPremium5() -> Bool {
    /*
        if userIsPremium does have a value,
        create a new `let userIsPremium` and
        assign the optional bool value to bool
        So here, userIsPremium is a non optional bool
        means simple boolean.
     */
    if let userIsPremium {
        return userIsPremium
    }
    return false
}


// Guard Statement

// When guard is a failure, enter the closure
func checkIfUserIsPremium6() -> Bool {
    /*
        Make sure there is a value.
        If there is, let newValue equal to that
        Otherwise, (Else return) return out of this function
        Technically we retrun false in case of userIsPremium == false
     */
    guard let newValue = userIsPremium else {
        return false
    }
    // Here we have access to non optional value
    return newValue
}


// Same same but different than checkIfUserIsPremium6
/*
    In above we create a new constant: newValue
    Here we create a new constant: userIsPremium
 */
func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}


/*
    Q. How to unwrap an optional
    A. We have three ways
        -> Nil Coalesing ??
        -> if let
        -> guard let 
 */
