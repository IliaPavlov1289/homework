import Foundation

protocol Car: AnyObject {
    var fuel: FuelType {get set}
    var horsePower: Int {get set}
    var madeIn: Int {get}
    func upgradePower(power:Int) //вывод на экран
    func chageFuleType(typeFuel: FuelType)
}

enum FuelType{
    case petrol, diesel
}

extension Car {
    func upgradePower(power: Int) {
        horsePower += power
    }
    func chageFuleType(typeFuel: FuelType) {
        fuel = typeFuel
    }
}
enum SportCarMark {
    case Bugatti, Maserati, Ferrari
}
enum BodyStyle {
    case sedan, hatchback
}
class SportCar: Car{
    var markSportCar: SportCarMark
    var bodyStyle: BodyStyle
    var fuel: FuelType
    var horsePower: Int
    var madeIn: Int
    init(markSportCar: SportCarMark, bodyStyle: BodyStyle, fuel: FuelType, horsePower: Int, madeIn: Int) {
        self.fuel = fuel
        self.horsePower = horsePower
        self.madeIn = madeIn
        self.markSportCar = markSportCar
        self.bodyStyle = bodyStyle
    }
}
extension SportCar: CustomStringConvertible{
    var description: String{
        return "Данный автомобиль \(madeIn) года выпуска, потребляемое топливо - \(fuel), двигатель выдаёт \(horsePower) лошадинах сил \nНа бесподобной \(markSportCar) в кузове \(bodyStyle) вы будете ощущуть себя Королём дороги!!!"
    }
}

enum TrunkCarMark {
    case Kraz, Maz, Kamaz
}

class TrunkCar: Car {
    var markTrunkCar: TrunkCarMark
    var bodyVolume: Double
    var fuel: FuelType
    var horsePower: Int
    var madeIn: Int
    init(markTrunkCar: TrunkCarMark, bodyVolume: Double, fuel: FuelType, horsePower: Int, madeIn: Int) {
        self.markTrunkCar = markTrunkCar
        self.bodyVolume = bodyVolume
        self.fuel = fuel
        self.horsePower = horsePower
        self.madeIn = madeIn
    }
}
extension TrunkCar: CustomStringConvertible{
    var description: String{
        return "Данный автомобиль \(madeIn) года выпуска, потребляемое топливо - \(fuel), двигатель выдаёт \(horsePower) лошадинах сил \n\(markTrunkCar) не имеет конкурентов на рынке по критериям цена/качество, особено учитывая его грузоподъёмность в \(bodyVolume) тонн"
    }
}

var car1 = SportCar(markSportCar: .Ferrari, bodyStyle: .sedan, fuel: .petrol, horsePower: 316, madeIn: 2020)
print(car1)
car1.chageFuleType(typeFuel: .diesel)
car1.upgradePower(power: 60)
print(car1)
var car2 = TrunkCar(markTrunkCar: .Maz, bodyVolume: 12.4, fuel: .diesel, horsePower: 412, madeIn: 2004)
print(car2)
car2.chageFuleType(typeFuel: .petrol)
car2.upgradePower(power: -84)
print(car2)
