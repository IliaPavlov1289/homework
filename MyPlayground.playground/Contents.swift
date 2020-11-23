 import UIKit
 
 enum EngineState {
    case turnedOn, turnedOff
 }
 enum Window {
    case open, close
 }
 
 struct SportCar {
    let carMark: String     // Марка машины
    let carYear: Int        // Годвыпуска
    let trunkSize: Int      // Объм багажника
    var isEngineOn: EngineState = .turnedOff    // Запущен ли двигаьель
    var windowState: Window = .close    // Открвтв ли окна
    let trunkFill: Int      // Загуженость багажника
 
    mutating func closeWindow() {
        self.windowState = .close
    }
    mutating func openWindow() {
        self.windowState = .open
    }
 }
 
 
 struct TruckCar {
    let carMark: String     // Марка машины
    let carYear: Int        // Годвыпуска
    let bodySize: Int      // Объм кузова
    var isEngineOn: EngineState = .turnedOff    // Запущен ли двигаьель
    var windowState: Window = .close    // Открвтв ли окна
    var bodyFill = 0      // Загуженость кузова
    
    init() {
        carMark = "Kamaz"
        carYear = 2018
        bodySize = 14500
        bodyFill = bodyFill + 400
    }
    init(carMark: String, carYear: Int, bodySize: Int){
        self.carMark = carMark
        self.carYear = carYear
        self.bodySize = bodySize
    }
 
 
 }

 
 var car1 = SportCar(carMark: "Nissan", carYear: 2005, trunkSize: 1455, trunkFill: 0)
 print(car1)
 car1.openWindow()
 print(car1)
 var car2 = TruckCar()
 print(car2)
 car2 = TruckCar(carMark: "Краз", carYear: 1999, bodySize: 13500)
 print(car2)
 
