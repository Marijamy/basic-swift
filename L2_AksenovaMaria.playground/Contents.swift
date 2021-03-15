
import UIKit

func even(n:Int)
{
    if  (n%2 == 0)
    {
        print("Число \(n) - четное")
    }else
    {
        print("Число \(n) - нечетное")
    }
}

even(n: 5)
even(n: 8)

func three(a:Int)
{
    let b:Int = a%3
    if b == 0
    {
        print("Число \(a) - делится на 3 без остатка")
    }else
    {
        print("Число \(a) - не делится на 3 без остатка")
    }
}

three(a: 9)
three(a: 11)

//создание массива из 100 последователных чисел

var emptyArray: [Int] = []

 /*func Array(_num: Int) -> [Int]
 {
    i = 0
    for i in 0..._num-1
    {
        emptyArray.append(i)
    }
    return emptyArray
 }*/

func Array(_num: Int) -> [Int]
{
    var i = 0
    while i < _num
    {
        emptyArray.append(i)
        i+=1
    }
    return emptyArray
}

var firstArray = Array(_num: 100)
print(firstArray)


func deleteTree(Array:[Int]) -> [Int]
{
    var arrayNew:[Int] = []
    for var i in firstArray
    {
        if i%3==0 && i%2>0
        {
            arrayNew.append(i)
        }else
        {
            i+=1
        }
    }
    return arrayNew
}
    
    firstArray = deleteTree(Array: firstArray)
print(firstArray)

func fiboAdd (lenght: Int, Array: [Int]) -> [Int] //функция по добавлению чисел Фибоначи в имеющийся массив(использовала Int, т.к. его хватает для 50 чисел :))
{
    var newArray: [Int] = Array
    let f0: Int = 0
    let f1: Int = 1
    newArray.append(f0)
    newArray.append(f1)
    var n = newArray.count
    while n < lenght {
        let n1 = (newArray[n-1]) + (newArray[n-2])
        newArray.append(n1)
        n+=1
    }
    return newArray
}

print(fiboAdd(lenght: 50, Array: firstArray))

func fibo (_ count:Int) -> [Double]{
    var newArray: [Double] = []
    if count == 1{
        let f0: Double = 0
        newArray.append(f0)
    }else if count == 2{
        let f0: Double = 0
        let f1: Double = 1
        newArray.append(f0)
        newArray.append(f1)
    }else{
        let f0: Double = 0
        let f1: Double = 1
        newArray.append(f0)
        newArray.append(f1)
        var n = 2
        while n < count + 2 {
            let n1 = (newArray[n-1]) + (newArray[n-2])
            newArray.append(n1)
            n+=1
        }
    }
    return newArray
}

print(fibo(25))


func isMultyple (_ num: Int, of divider: Int) -> Bool
{
    return num%divider == 0
}

var integers: [Int] = []

while integers.count != 550{
    integers.append(integers.count+2)
}

var p:Int
var index = 0

while index < integers.count-1 {
    p = integers[index]
    for num in integers{
        if (num != p) && isMultyple(num, of: p){
            integers.remove(at: integers.firstIndex(of: num)!)
        }
    }
    index+=1
}

print(integers)

print(integers.count)

