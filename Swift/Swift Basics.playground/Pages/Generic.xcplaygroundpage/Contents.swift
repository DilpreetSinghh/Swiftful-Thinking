import UIKit
import Foundation


func determineHigherValue<T: Comparable>(valueOne: T, valueTwo: T){
    let higherValue = valueOne>valueTwo ? valueOne : valueTwo
    print("\(higherValue) is the higher value")
}

determineHigherValue(valueOne: Date.now, valueTwo: Date.distantFuture)
determineHigherValue(valueOne: 7, valueTwo: 23)
determineHigherValue(valueOne: "Dilpreet", valueTwo: "GitHub")
determineHigherValue(valueOne: Date.now, valueTwo: Date.distantPast) //London time


// No Boundaries over the type of data it can receive




// -------------------------




// In below exmaple we are finding info of github profile
// Data is dummy


// Define User and Repository structs
struct User: Codable {
    let name: String
    let email: String
}

struct Repository: Codable {
    let name: String
    let description: String
}

// Dummy data for demo
let userData = """
{
    "name": "John Doe",
    "email": "john@example.com"
}
""".data(using: .utf8)!

let repositoryData = """
{
    "name": "Sample Repository",
    "description": "This is a sample repository"
}
""".data(using: .utf8)!



// Game Starts here

let decoder = JSONDecoder()

func fetchUser(from url: URL) async throws -> User {
    let (data, _) = try await URLSession.shared.data(from: url)
    do {
        return try decoder.decode(User.self, from: data)
    } catch {
        throw error
    }
}

func fetchRepository(from url: URL) async throws -> Repository {
    let (data, _) = try await URLSession.shared.data(from: url)
    
    do {
        return try decoder.decode(Repository.self, from: data)
    } catch {
        throw error
    }
}



// For single data type we have to create different function.
// Instead we can use generic types to avoid repetitions




func fetchData<T: Decodable>(for type: T.Type, from url: URL) async throws -> T {
    let (data, _) = try await URLSession.shared.data(from: url)
    do {
        return try decoder.decode(T.self, from: data)
    } catch {
        throw error
    }
}

    
