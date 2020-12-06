import Foundation
struct Realty {
    let name: String
    let cost: Double
}
//struct RealtyName {
//    let name: String
//}
enum LocalError: String, Error {
    case noData = "Двнного объукта нет в перечне недвижимости"
}
class RealtyList {
    var list = [
        "Apartments": Realty(name: "Apartments", cost: 7000000),
        "House": Realty(name: "House", cost: 25000000),
        "Car": Realty(name: "Car", cost: 2200000)
    ]
    var interestRate = 0.002
    func calculationTax(RealtyNamed name: String) {
        if let item = list[name] {
        let tax: Double = list[name]!.cost * interestRate
        print (tax)
        } else {print(LocalError.noData.rawValue)
        }
    }
    func calculationTax2(RealtyNamed name: String) throws -> Double {
        guard let item = list[name] else { throw LocalError.noData
        }
        let tax: Double = list[name]!.cost * interestRate
        return tax
    }
}
RealtyList().calculationTax(RealtyNamed: "Helicopter")


do {
    let results = try RealtyList().calculationTax2(RealtyNamed: "Apartments")
    print(results)
    let results2 = try RealtyList().calculationTax2(RealtyNamed: "Helicopter")
    print(results2)
} catch {
    if error is LocalError {
        let error = error as! LocalError
        print(error.rawValue)
    }
}
