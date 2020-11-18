import Foundation

 // четное или нет

func even(_ number: Int){
    print("\(number % 2 == 0 ? "Число чётное" : "Чиcло нечётное" )")
}
 even(64)


 // делится ли на 3

func dividedBy3(_ number: Int){
    print("\(number % 3 == 0 ? "Число делится на 3 без остатка" : "Число не делится на 3 без остатка, остаток от деления равен \(number % 3)" )")
}
dividedBy3(64)

  // массив из 100 чисел

var array = [Int]()
var element = 1
for _ in 0 ... 99 {
    array.append(element)
    element += 1
}
print(array)

  // Удаление /2 /3

let array2 = array.filter{($0 % 2 != 0) && ($0 % 3 == 0)}
print(array2)

  // Фибоначчи

func fibonacci(){
    var array = [0, 1]
    for index in 0 ... 49 {
        array.append(array[index] + array[index + 1])
    }
    print(array)
}
fibonacci()

  // Простые числа

var numbers = [Int]()
var elementNumber = 1
for _ in 0 ... 539 {
    numbers.append(elementNumber)
    elementNumber += 1
}
for index1 in 1 ..< numbers.count - 1{
    if numbers[index1] != 0{
        for index2 in index1 + 1 ..< numbers.count{
            if numbers[index2] % numbers[index1] == 0 {
                numbers[index2] = 0
            }
        }
    }
}
let primeNumbers = numbers.filter{$0 != 0}
print(primeNumbers.count)
