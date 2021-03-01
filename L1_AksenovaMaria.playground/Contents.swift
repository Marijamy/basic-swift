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

let d:Double = 6
 let e:Double = 8

let f = sqrt((d*d)+(e*e))
 let p = d + e + f
 let s = (d*e)/2
 print(" Гипотенуза треуголника: \(f). \n Периметр треугольника: \(p).\n Площадь треугольника: \(s).")

var year = 5
 var sum = 100000
 var proc = 10
 var inc:Int
 var i = 1

 while i <= year
 {
     sum = sum+(sum*proc)/100
     i=i+1
 }

     print("Сумма за \(year) лет: \(sum)")


