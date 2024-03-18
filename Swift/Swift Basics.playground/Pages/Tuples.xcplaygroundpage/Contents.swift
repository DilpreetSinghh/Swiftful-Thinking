import Foundation

var userName: String = "Dilpreet Singh"
var userIsPremium: Bool = true
var userIsNew: Bool = false

func getUserName() -> String{
    userName
}
func getUserIsPremium() -> Bool {
    userIsPremium
}

/// Limited to 1 return type
/// 
func getUserInfo() -> String {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    return name
}

// Tuple can combine multiple pieces of data
func getUserInfo2() -> (String, Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    return (name, isPremium)
}

var userData1: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)

let info1 = getUserInfo2()
let name1 = info1.0


// -----------------------------------


func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()
    return (name, isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.name


// -----------------------------------


func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return(userName, userIsPremium, userIsNew)
}

func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)){
    
}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)
