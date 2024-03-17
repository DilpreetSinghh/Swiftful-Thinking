import Foundation

// Enum is the same as Struct except we know all cases at runtime


// ------------------------


struct CarModel{
    let brand: String
    let model: String
}

var car1: CarModel = CarModel(brand: "Ford", model: "Endeavour")
var car2: CarModel = CarModel(brand: "Toyota", model: "Fortuner")
var car3: CarModel = CarModel(brand: "Lamborghini", model: "Urus")


// -------------------------

struct CarModel2{
    let brand: CarBrand2
    let model: String
}

struct CarBrand2 {
    let title: String
}

var brand1 = CarBrand2(title: "Ford")
var brand2 = CarBrand2(title: "Toyota")
var brand3 = CarBrand2(title: "Lamborghini")

var car4: CarModel2 = CarModel2(brand: brand1, model: "Endeavour")
var car5: CarModel2 = CarModel2(brand: brand2, model: "Fortuner")
var car6: CarModel2 = CarModel2(brand: brand3, model: "Urus")


// ------------------------

struct CarModel3{
    let brand: CarBrandOption3
    let model: String
}

// Enums are stored in memory the same way a struct by we cannot mutate them
enum CarBrandOption3 {
    case Ford
    case Toyota
    case Lamborghini
}

var car7 = CarModel3(brand: .Ford, model: "Endeavour")
var car8 = CarModel3(brand: .Toyota, model: "Fortuner")
var car9 = CarModel3(brand: .Lamborghini, model: "Urus")


// ------------------------


struct CarModel4 {
    let brand: CarBrandOption4
    let model: String
}

enum CarBrandOption4{
    case ford, toyota, lamborghini, honda
    
    var title: String{
        
        switch self {
        case .ford:
            return "Ford"
        case .lamborghini:
            return "Lamborghini"
        case .toyota:
            return "Toyota"
        default:
            return "Default"
        }
    }
}

var fordBrand: CarBrandOption4 = .ford
print(fordBrand.title)
