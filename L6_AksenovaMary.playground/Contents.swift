import UIKit

struct order<S: Equatable> {
    var pieces = [S]()
    
    mutating func push(_ piece: S){
        pieces.append(piece)
    }
    
    mutating func pop(_ piece: S){
        pieces.removeLast()
    }
    
    subscript(index: Int) -> S? {
        if index < pieces.count{
            print(pieces[index])
<<<<<<< HEAD
            return pieces[index]
=======
>>>>>>> e50fbe72588bcfee74925d7f4554104abbfc3384
        }
        return nil
    }
    
}

func findIndexGeneric<T: Equatable>(of valueToFind: T, in array: [T]) -> Int?{
    for (index, value) in array.enumerated(){
        if value == valueToFind{
            return index
        }
    }
    return nil
}

<<<<<<< HEAD
/*var a = order(pieces: [12,3,4,5,6])
var aaa = a[0]
print(aaa)*/

=======
>>>>>>> e50fbe72588bcfee74925d7f4554104abbfc3384
var material = order<String>()

    material.push("cotton")
    material.push("twill")
    material.push("wool")
    material.push("fleece")
    material.push("chiffon")
    material.push("crepe de chine")
    material.push("silk")
    material.push("velvet")
    material.push("jersey")

var arrayOne = material.pieces

<<<<<<< HEAD
print(arrayOne[10])
=======
print(arrayOne[3])
>>>>>>> e50fbe72588bcfee74925d7f4554104abbfc3384

var sortedArray = arrayOne.sorted{(s1: String,s2: String) -> Bool in  return s2 > s1}
print(sortedArray)
    
var findIndexString = findIndexGeneric(of: "wool", in: arrayOne)
print(findIndexString!)

var number = order<Int>()

    number.push(13)
    number.push(466)
    number.push(39)
    number.push(58)
    number.push(934)
    number.push(10)
    number.push(46)
    number.push(29)
    number.push(52)
    number.push(98)
    number.push(12)
    number.push(73)
    number.push(88)
    number.push(45)
    number.push(1)
    number.push(36)
    number.push(5)
    number.push(9)
    number.push(26)
    number.push(34)
    number.push(9)


var numbers = number.pieces

print(numbers)

var findIndexInt = findIndexGeneric(of: 73, in: numbers)

var updateNumbers = numbers.map{$0*10}

print(updateNumbers)

var updateNumbers1 = numbers.filter{$0%2 != 0}

print(updateNumbers1.prefix(5))

var updateNumbers2 = numbers.filter{$0%3 != 0}

print(updateNumbers2)

var updateNumbersLast = numbers.reduce(0, +)

print(updateNumbersLast)











