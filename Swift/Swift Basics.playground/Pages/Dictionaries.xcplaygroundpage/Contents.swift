import Foundation

var myFirstDictionary: [String: Bool] = [
    "Apple": true,
    "Orange": false
]
let item = myFirstDictionary ["Orange"] // Optional Bool


var anotherDictionary: [Int: String] = [
    0: "Apple",
    1912: "Banana"
]
let item1 = anotherDictionary[1912]
let item2 = anotherDictionary[21]

// Adding in Dictionary
anotherDictionary[1921] = "Papaya"
print(anotherDictionary)

// Remove item in Dictionary
anotherDictionary.removeValue(forKey: 1921)
print(anotherDictionary)

// Dictionary are faster than Arrays & Sets



struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}
var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "def678", title: "Post 2", likeCount: 7), 
    PostModel(id: "xyz987", title: "Post 3", likeCount: 217),
]
if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

var postDict: [String: PostModel] = [
    "abc123": PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "def678": PostModel(id: "def678", title: "Post 2", likeCount: 7),
    "xyz987": PostModel(id: "xyz987", title: "Post 3", likeCount: 217)
]
let myNewItem = postDict["def678"]
print(myNewItem)
