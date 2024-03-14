import Foundation

var likeCount: Double = 200
var commentCount: Double = 45
var viewCount: Double = 1000

// likeCount = likeCount + 300
likeCount += 300
likeCount += 200

//ORDER of Operation Does Matter
// PEMDAS

likeCount = likeCount + 100 * 20
likeCount = (likeCount + 100) * 20

if 56000 == likeCount {
    print("Like is too much wiz 56,000")
}

if likeCount != 56000 {
    print("Like count isn't 56000. It has changed")
}
//   <   >   >=   <=

if likeCount >= 50000 && commentCount >= 500{
    print("Post is in viral category")
} else {
    print("Neither likes nor comments, or both, have crossed the threshold.")
}

// (&& -> AND) (|| -> OR)

var userIsPremium = true
var userIsNew = true

if userIsNew && !userIsPremium {
    print("Check out our premium plans")
} else if userIsNew && userIsPremium{
    print("Thanks for choosing us")
} else {
    // do nothing
}
