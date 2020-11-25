import Foundation

enum FuelType{
    case petrol, diesel
}
enum CarActions{
    case upgradeMaxLoad(Double)
    case chageFuleType(FuelType)
    case upgradePower(Int)
}
class Car {
    var fuel: FuelType
    var horsePower: Int
    let madeIn: Int
    
    init(fuel: FuelType, horsePower: Int, madeIn: Int) {
        self.fuel = fuel
        self.horsePower = horsePower
        self.madeIn = madeIn
    }
    func parametritisesCar() {
        print("Данный автомобиль \(madeIn) года выпуска, потребляемое топливо - \(fuel), двигатель выдаёт \(horsePower) лошадинах сил")
    }
}

enum SportCarMark {
    case Bugatti, Maserati, Ferrari
}
enum BodyStyle {
    case sedan, hatchback
}

class SportCar: Car {
    var markSportCar: SportCarMark
    var bodyStyle: BodyStyle
    init (markSportCar: SportCarMark, bodyStyle: BodyStyle, fuel: FuelType, horsePower: Int, madeIn: Int){
        self.markSportCar = markSportCar
        self.bodyStyle = bodyStyle
        super.init(fuel: fuel, horsePower: horsePower, madeIn: madeIn)
    }
    override func parametritisesCar(){
        super.parametritisesCar()
        print("На бесподобной \(markSportCar) в кузове \(bodyStyle) вы будете ощущуть себя Королём дороги!!!")
    }
    func sportCarAction(action: CarActions){
        switch action {
        case .upgradePower(let power):
            self.horsePower += power
        case .chageFuleType(let typefuel):
            fuel = typefuel
        case .upgradeMaxLoad:
            print("Это спортивный автомобиль, а не грузовик, поручите дворецкому разобраться с доставкой груза")
        }
    }
}

enum TrunkCarMark {
    case Kraz, Maz, Kamaz
}

class TrunkCar: Car {
    var markTrunkCar: TrunkCarMark
    var bodyVolume: Double
    init (markTrunkCar: TrunkCarMark, bodyVolume: Double, fuel: FuelType, horsePower: Int, madeIn: Int){
        self.markTrunkCar = markTrunkCar
        self.bodyVolume = bodyVolume
        super.init(fuel: fuel, horsePower: horsePower, madeIn: madeIn)
    }
    override func parametritisesCar(){
        super.parametritisesCar()
        print("\(markTrunkCar) не имеет конкурентов на рынке по критериям цена/качество, особено учитывая его грузоподъёмность в \(bodyVolume) тонн")
    }
    func trunkCarAction(action: CarActions){
        switch action {
        case .upgradePower(let power):
            self.horsePower += power
        case .chageFuleType(let typefuel):
            fuel = typefuel
        case .upgradeMaxLoad(let load):
            self.bodyVolume += load
        }
    }
    
}
var car = SportCar(markSportCar: .Ferrari, bodyStyle: .sedan, fuel: .petrol, horsePower: 345, madeIn: 2020)
print(car.bodyStyle)
car.sportCarAction(action: .upgradeMaxLoad(200))
print(car.bodyStyle)
car.parametritisesCar()
var car2 = TrunkCar(markTrunkCar: .Kraz, bodyVolume: 13.5, fuel: .diesel, horsePower: 218, madeIn: 1998)
car2.parametritisesCar()
car2.trunkCarAction(action: .upgradeMaxLoad(0.5))
car2.parametritisesCar()
