import UIKit

var a = 1
var b = -6
var c = 9

var discriminant:Double = Double(b*b) - Double(4*a*c)


if discriminant > 0
{
    let x1 =  (Double(-b)+sqrt(discriminant))/Double(2*a)
    let x2 =  (Double(-b)-sqrt(discriminant))/Double(2*a)
    print("Корни уравнений:  x1 = \(x1) ; x2 = \(x2) ")
}
else if discriminant == 0
{
    let x = (Double(-b))/(Double(2*a))
    print("Корень уравнения:  x = \(x) ")
}
else if discriminant < 0
{
    print("Уравнение не имеет корней")
}
