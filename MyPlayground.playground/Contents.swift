
class Queue <T> {
    private var array: [T] = []
    func pop() -> T? {
        guard array.count > 0 else {return nil}
        return array.removeLast()
    }
    func push(_ element: T) {
        array.insert(element, at: 0)
    }
}

let queue = Queue<Int>()
queue.push(1)
queue.push(2)
queue.push(3)
queue.pop()

var array = [738, 14, 463, 58, 128, 565, 937, 536, 173]
let maxVariable: (Int, Int) -> Bool = { (element: Int, max: Int) -> Bool in
    return element > max
}
let minVariable: (Int, Int) -> Bool = { (element: Int, min: Int) -> Bool in
    return element < min
}
func minMax(array: [Int], predicate: (Int, Int) -> Bool ) -> Int {
    var resultValue  = array[0]
    for element in array {
        if predicate(element, resultValue) {
            resultValue = element
        }
    }
    return resultValue
}
minMax(array: array, predicate: maxVariable)
minMax(array: array, predicate: minVariable)

