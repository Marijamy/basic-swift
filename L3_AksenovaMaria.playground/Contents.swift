import UIKit

enum Direction: String{
    case Open = "Open"
    case Close = "Close"
    case On = "On"
    case Off = "Off"
    case Full = "Full"
    case Empty = "Empty"
}

struct typeCar{
    let model: String
    let yearOfRelease: Int
    let trunkVolume: Int
    var drive: String
    var windows: String
    var trunkFull: String
    
    mutating func trunkStatus(volume: Int) {
        if volume == self.trunkVolume{
            self.trunkFull = Direction.Full.rawValue
        }else if volume < self.trunkVolume{
            let trunk = trunkVolume - volume
            self.trunkFull = Direction.Empty.rawValue
            print("В багажнике осталось \(trunk) литров свободного пространства")
        }else if volume > self.trunkVolume{
            print("Объем багажника \(trunkVolume) литров")
        }
    }
    
    mutating func windowsStatus(direction: Direction){
        if direction == Direction.Close{
            self.windows = Direction.Close.rawValue
        }else if direction == Direction.Open{
            self.windows = Direction.Open.rawValue
            print("Внимание! Окна открыты!")
        }else{
            print("Введите корректное значение для данного параметра")
        }
    }
    
    mutating func driveStatus(direction: Direction){
        if direction == Direction.Off{
            self.drive = Direction.Off.rawValue
        }else if direction == Direction.On{
            self.drive = Direction.On.rawValue
            print("Внимание! Двигатель запущен!")
        }else{
            print("Введите корректное значение для данного параметра")
        }
    }
}


var passangerCar = typeCar(model: "Lada", yearOfRelease: 2012, trunkVolume: 130, drive: Direction.Off.rawValue, windows: Direction.Close.rawValue, trunkFull: Direction.Empty.rawValue)

var trunkCar = typeCar(model: "Scania", yearOfRelease: 2001, trunkVolume: 1250, drive: Direction.Off.rawValue, windows: Direction.Close.rawValue, trunkFull: Direction.Full.rawValue)

print(passangerCar)
print(trunkCar)

passangerCar.trunkStatus(volume: 100)
print(passangerCar)
trunkCar.trunkStatus(volume: 0)
print(trunkCar)

passangerCar.windowsStatus(direction: Direction.Open)
print(passangerCar)
trunkCar.windowsStatus(direction: Direction.Open)
print(trunkCar)

passangerCar.driveStatus(direction: Direction.On)
print(passangerCar)
