import Foundation

struct MovieModel {
    let title: String
    let genre: MovieGenre
    private(set) var isFavourite: Bool
    
    func updateFavouriteStatus(newValue: Bool) -> MovieModel{
        MovieModel(title: title, genre: genre, isFavourite: newValue)
    }
    
    mutating func updateFavouriteStatus2(newValue: Bool){
        isFavourite = newValue
    }
}

enum MovieGenre {
    case comedy, horror, drama, action
}

class MovieManager {
    // private + public: We can read as public, update in class
    private(set) var movie1 = MovieModel(title: "Golmaal", genre: .comedy, isFavourite: false)
    // still public: we can make any changes outside the class
    var movie2 = MovieModel(title: "The Batman", genre: .action, isFavourite: false)
    //private: we can't make any changes outside the class
    private var movie3 = MovieModel(title: "IT", genre: .horror, isFavourite: false)
    // public: we can make any changes outside the class
    var movie4 = MovieModel(title: "Paperman", genre: .drama, isFavourite: true)
    
}

let manager = MovieManager()

manager.movie4 = manager.movie2.updateFavouriteStatus(newValue: false)
manager.movie2.updateFavouriteStatus2(newValue: true)

print(manager.movie2.isFavourite)
print(manager.movie4.isFavourite)


/*
    There are many other levels:
    - open
    - internal
    - fileprivate
 */
