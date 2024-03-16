import Foundation

// Structs are fast
// Structs are stored in stacks
// Objects in the stacks are the value types
// Value types are copied & mutated

struct Quiz1 {
    let title: String
    let dateCreated: Date
    
    // Structs have an implicit init
    
    init(title: String, dateCreated: Date) {
        self.title = title
        self.dateCreated = dateCreated
    }
}

let myQuiz: Quiz1 = Quiz1(title: "Quiz1", dateCreated: .now)


// what if we want to set a default value for any parameter


struct Quiz2 {
    let title: String
    let dateCreated: Date
    
    init(title: String = "Quiz2", dateCreated: Date = .now) {
        self.title = title
        self.dateCreated = dateCreated
    }
}

let QuizTwo = Quiz2() // we can edit by pressing option + return


struct Quiz3 {
    let title: String
    let dateCreated: Date
    let isPremium: Bool?
    
    init(title: String = "Quiz2", dateCreated: Date?, isPremium: Bool?) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
}
let quizThree: Quiz3 = Quiz3(title: "Quiz3", dateCreated: .now, isPremium: false)

// "Immutable struct = all let" constants = Not mutable = "cannot mutate it"
struct UserModel {
    let name: String
    let isPremium: Bool
}

var user1: UserModel = UserModel(name: "Dilpreet", isPremium: false)

func markUser1AsPremium(){
    print(user1)
    user1 = UserModel(name: user1.name, isPremium: true)
    print(user1)
}
markUser1AsPremium()

//--------------------------------------------------------

// "mutable struct"
struct UserModel2 {
    let name: String
    var isPremium: Bool
}

var user2 = UserModel2(name: "Jashan", isPremium: false)

func markUserAsPremium2() {
    print(user2)
    // "mutate" the struct
    user2.isPremium = true
    print(user2)
}
markUserAsPremium2()

// -----------------------------------------------------

// "immutable struct"
struct UserModel3 {
    let name: String
    let isPremium: Bool
    
    func markUserAsPremium(newValue: Bool) -> UserModel3 {
        UserModel3(name: name, isPremium: newValue)
    }
}

var user3: UserModel3 = UserModel3(name: "Amar", isPremium: false)
print(user3)
user3 = user3.markUserAsPremium(newValue: true)
print(user3)

// -----------------------------------------------------

struct UserModel4{
    let name: String
    private(set) var isPremium: Bool  // we can't change value outside the struct
    
    mutating func markUserAsPremium(){
        isPremium = true
    }
    
    mutating func updateIsPremium(newValue: Bool){
        isPremium = newValue
    }
}

var user4 = UserModel4(name: "Parvesh", isPremium: false)
user4.markUserAsPremium()
user4.updateIsPremium(newValue: true)

// X user4.isPremium = true


