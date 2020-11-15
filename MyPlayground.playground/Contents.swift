import UIKit

// Решить квадратное уровнение
// ax2 + bx + c = 0

let a: Double = 2
let b: Double = 8
let c: Double = 4
let d: Double = b*b - 4*a*c
let x1 = (-b - sqrt(d)) / 2*a
let x2 = (-b + sqrt(d)) / 2*a


 // Прямоугольный треугольник

let leg1: Double = 4
let leg2: Double = 8
let hup = sqrt(pow(leg1,2) + pow(leg2,2))
let s = leg1 * leg2 / 2
let p = leg1 + leg2 + hup


 // Вклад

let contributon = 100000
let persent = 10
let year = 5
let sum = pow((Float(1) + Float(persent) / Float(100)),Float(year)) * Float(contributon)
