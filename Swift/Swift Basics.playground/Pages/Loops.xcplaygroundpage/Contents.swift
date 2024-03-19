import Foundation

for item in 1..<3 {
    print(item)
}

for item in 1...3 {
    print(item)
}

let squadrons = ["Alpha", "Bravo", "Charlie", "Delta", "Echo"]

for squadron in squadrons{
    print(squadron)
}


// -----------------------------

struct LessonModel {
    let title: String
    let isFavorite: Bool
}

let allLessons = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: false),
    LessonModel (title: "Lesson 3", isFavorite: false),
    LessonModel(title: "Lesson 4", isFavorite: true),
]

var favoriteLessons: [LessonModel] = []

for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}
print(favoriteLessons)

for (index, lesson) in allLessons.enumerated() {
    
    if index == 0 {
        continue
        // skips index == 0
    }
    
    if index == 3{
        break
        // for loop won't continue
        // for loop will break not just if
    }
    print("Index: \(index) || Lesson: \(lesson)")
}
