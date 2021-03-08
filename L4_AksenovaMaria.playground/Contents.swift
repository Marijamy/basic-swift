import UIKit

enum Direction: String{
    case Open = "Open"
    case Close = "Close"
    case On = "On"
    case Off = "Off"
    case Full = "Full"
    case Empty = "Empty"
}

class Car{
    let model: String
    let yearOfRelease: Int
    let trunkVolume: Int
    var drive: Direction
    var windows: Direction
    var trunkFull: Direction
    
    init(model: String, yearOfRelease: Int, trunkVolume: Int, drive: Direction, windows: Direction, trunkFull: Direction) {
        self.model = model
        self.yearOfRelease = yearOfRelease
        self.trunkVolume = trunkVolume
        self.drive = drive
        self.windows = windows
        self.trunkFull = trunkFull
    }
    func trunkIsFull() {
        self.trunkFull = .Full
    }
    
    func windowsOpen(){
            self.windows = Direction.Open
            print("Внимание! Окна открыты!")
    }
    
    func driveStart(){
            self.drive = Direction.On
            print("Внимание! Двигатель запущен!")
    }
    
    func discription () {
        print("Модель \(model) \(yearOfRelease) года выпуска. Объем багажника \(trunkVolume) литров. В данный момент двигатель \(drive), окна \(windows), багажник \(trunkFull).")
    }
}

class TrunkCar : Car {
    var trailer: Bool
    var trailerVolume: Int
    var trailerFull: Direction
    
    func treilerIsFull() {
        self.trailerFull = .Full
    }
    
    init(model: String, yearOfRelease: Int, trunkVolume: Int, drive: Direction, windows: Direction, trunkFull: Direction, trailer: Bool, trailerFull: Direction, trailerVolume: Int) {
        self.trailer = trailer
        self.trailerVolume = trailerVolume
        self.trailerFull = trailerFull
        super.init (model: model, yearOfRelease: yearOfRelease, trunkVolume: trunkVolume, drive: drive, windows: windows, trunkFull: trunkFull)
    }
    
    func trailerDetach() {
        self.trailer = false
    }
    
    override func discription() {
        print("Модель \(model) \(yearOfRelease) года выпуска. Объем багажника \(trunkVolume) литров. Прицеп в данной комплектации \(trailer). В данный момент двигатель \(drive), окна \(windows), багажник \(trunkFull).")
    }
}

class SportCar : Car {
    var hatch: Bool
    var hatchStatus: Direction
    
    init(model: String, yearOfRelease: Int, trunkVolume: Int, drive: Direction, windows: Direction, trunkFull: Direction, hatch: Bool, hatchStatus: Direction) {
        self.hatch = hatch
        self.hatchStatus = hatchStatus
        super.init(model: model, yearOfRelease: yearOfRelease, trunkVolume: trunkVolume, drive: drive, windows: windows, trunkFull: trunkFull)
    }
    
    func hatchOpen() {
        self.hatchStatus = .Open
    }
    
    override func discription() {
        print("Модель \(model) \(yearOfRelease) года выпуска. Объем багажника \(trunkVolume) литров. Люк в данной комплектации \(hatch), \(hatchStatus). В данный момент двигатель \(drive), окна \(windows), багажник \(trunkFull).")
    }
}

var passangerCar = Car(model: "Mitsubishi", yearOfRelease: 2020, trunkVolume: 130, drive: .Off, windows: .Close, trunkFull: .Empty)

passangerCar.discription()
print(passangerCar.driveStart())
passangerCar.discription()

var KamazCar = TrunkCar(model: "Kamaz", yearOfRelease: 2001, trunkVolume: 5000, drive: .Off, windows: .Close, trunkFull: .Empty, trailer: true, trailerFull: .Empty, trailerVolume: 12000)

KamazCar.discription()
KamazCar.treilerIsFull()
KamazCar.trailerDetach()
KamazCar.discription()

var CarFerrari = SportCar(model: "Ferrari Dino", yearOfRelease: 1974, trunkVolume: 50, drive: .Off, windows: .Close, trunkFull: .Empty, hatch: true, hatchStatus: .Close)

CarFerrari.discription()
CarFerrari.hatchOpen()
CarFerrari.discription()
