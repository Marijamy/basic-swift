import UIKit

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

