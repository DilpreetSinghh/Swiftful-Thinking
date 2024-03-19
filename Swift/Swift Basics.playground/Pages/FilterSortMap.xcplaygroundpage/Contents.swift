import Foundation

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Dilpreet", isPremium: false, order: 3),
    DatabaseUser(name: "Veronika", isPremium: true, order: 5),
    DatabaseUser(name: "Kiki", isPremium: false, order: 1),
    DatabaseUser(name: "Karan", isPremium: true, order: 8)
]

// Method 1
var allPremiumUsers: [DatabaseUser] = []

for user in allUsers {
    if user.isPremium {
        allPremiumUsers.append(user)
    }
}
print(allPremiumUsers)


// Method 2
var allPremiumUsers2: [DatabaseUser] = allUsers.filter{ $0.isPremium }
print(allPremiumUsers2)

var allNonPremiumUsers: [DatabaseUser] = allUsers.filter { !$0.isPremium }
print(allNonPremiumUsers)



// Method 3
var allPremiumUsers3: [DatabaseUser] = allUsers.filter{ user in
    if user.isPremium{
        return true
    } else {return false}
}
print(allPremiumUsers3)


// Method 4
var allPremiumUsers4: [DatabaseUser] = allUsers.filter{ user in
    return user.isPremium
}
print(allPremiumUsers4)




//ORDERED USERS

var orderedUsers1: [DatabaseUser] = allUsers.sorted { user1, user2 in
    return user1.order < user2.order
}
print(orderedUsers1)


// Method 2
var orderedUsers2: [DatabaseUser] = allUsers.sorted (by: { $0.order < $1.order })
print(orderedUsers1)



// MAPPING

var userNames: [String] = allUsers.map { user in
    return user.name
}
print(userNames)


// In ordered List
var userNames: [String] = orderedUsers2.map { user in
    return user.name
}
print(userNames)
