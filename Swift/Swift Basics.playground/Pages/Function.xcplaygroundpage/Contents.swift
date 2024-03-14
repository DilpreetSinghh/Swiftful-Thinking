import Foundation

func myFirstFunction(){
    print("myFirstFunction has been called")
    mySecondFunction()
    myThirdFunction()
}

myFirstFunction()

func mySecondFunction() {
    print("mySecondFunction has been called")
}
func myThirdFunction() {
    print("myThirdFunction has been called")
}


//-----------------------------------


func getUserName() -> String {
    let username: String = "Dilpreet Singh" // can't access outside function
    return username
}

let name: String = getUserName()

func checkUserIsPremium() -> Bool {
    return false
}

//        let name: String = checkUserIsPremium()
// error: Cannot convert value of type 'Bool' to specified type 'String'


/*
 This not how we done -> unable to access value of `userDidCompleteOnboarding` and `userProfiletsCreated`
func showFirstScreen(){
    var userDidCompleteOnboarding: Bool = false
    var userProfiletsCreated: Bool = true
}
showFirstScreen()

func checkUserStatus () -> Bool {
    if userDidCompleteOnboarding && userProfiletsCreated {
        return true
    } else {
        return false
    }
}
*/


func showFirstScreen(){
    var userDidCompleteOnboarding: Bool = false
    var userProfiletsCreated: Bool = true
    let status = checkUserStatus(didCompleteOnboarding: userDidCompleteOnboarding, profileIsCreated: userProfiletsCreated)
    
    if status == true {
        print("Show Home Screen")
    } else {
        print("Show Onboarding Screen")
    }
}
    
func checkUserStatus (didCompleteOnboarding: Bool, profileIsCreated: Bool) -> Bool {
    if didCompleteOnboarding && profileIsCreated {
        return true
    } else {
        return false
    }
}

showFirstScreen()


//-----------------------------------

/* `-> String` force us to write else statement as now it means doSomething() has to return a string, no matter the case */
func Batman() -> String {
    var title: String = "Batmn"
    
    if title == "Batman" {
        print("Justice League")
        return "Justice League"
    } else {
        print("Not Batman")
        return "Not Batman"
    }
    print("this is the inside of the function")
}
Batman()



func Superman() -> Bool {
    var title: String = "Loki"
    
    /*   Q.   What the `guard` doing ?
         A.   Make sure the title is Batman, otherwise return (or exit this whole function).
    */
    guard title == "Superman" else{
        print("Not Superman")
        return false
    }
    print("No trace of Kryptonite should be here")
    return true
}

Superman()


//------------------------------------------------------------------

// Calculate using Variables

let number1: Int = 5
let number2: Int = 10

func funcAddNumbers() -> Int {
    return number1 + number2
} // calling on command

var varAddNumber: Int {
    return number1 + number2
} // Called on every run

func funcAddNumbers(value1: Int, value2: Int) -> Int {
    return value1 + value2
}

funcAddNumbers()
funcAddNumbers(value1: number1, value2: number2)
funcAddNumbers(value1: 32, value2: 8)
