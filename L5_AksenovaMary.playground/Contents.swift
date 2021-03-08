import UIKit

enum engine: CustomStringConvertible {
    case on, off
    
    var description: String{
        switch self {
        case .on:
            return "заведен"
        case .off:
            return "заглушен"
        }
    }
}

enum windows: CustomStringConvertible {
    case open, close
    
    var description: String{
        switch self {
        case .open:
            return "открыты"
        case .close:
            return "закрыты"
        }
    }
}

enum trailer: CustomStringConvertible{
    case empty, full
    
    var description: String{
        switch self {
        case .empty:
            return "пустой"
        case .full:
            return "заполнен"
        }
    }
}

protocol Car: class {
    var model: String {get}
    var year: Int {get}
    var engine: engine {get set}
    var windows: windows {get set}
}

extension Car{
    func Windows(action: windows) {
        if action == .open{
        self.windows = .open
        }else if action == .close{
            self.windows = .close
        }
    }
}

extension Car{
    func engine(action: engine) {
        if action == .on{
            self.engine = .on
        }else if action == .off{
            self.engine = .off
        }
    }
}

    class SportCar: Car{
        
    var model: String
    var year: Int
    var engine: engine
    var engineVolume: Int
    var windows: windows
    var mileage: Int
    
    init(model: String, year: Int, engineVolume: Int, engine: engine, windows: windows, mileage: Int) {
        self.model = model
        self.year = year
        self.engineVolume = engineVolume
        self.engine = engine
        self.windows = windows
        self.mileage = mileage
    }
}
extension SportCar: CustomStringConvertible{
    var description: String {
        "Автомобиль: \(model)\n" +
        "Год выпуска: \(year)\n" +
        "Состояние двигателя: \(engine)\n" +
        "Объем двигателя: \(engineVolume) литров\n" +
        "Окна: \(windows)\n" +
        "Пробег: \(mileage) километров\n"
    }
}

class TrunkCar : Car {
    var model: String
    var year: Int
    var engine: engine
    var windows: windows
    var mileage: Int
    var trailerFull:trailer
    
    
    init(model: String, year: Int , windows: windows, engine: engine, mileage: Int, trailerFull: trailer) {
        self.model = model
        self.year = year
        self.engine = engine
        self.windows = windows
        self.mileage = mileage
        self.trailerFull = trailerFull
    }
}
extension TrunkCar: CustomStringConvertible{
    var description: String {
        "Автомобиль: \(model)\n" +
        "Год выпуска: \(year)\n" +
        "Состояние двигателя: \(engine)\n" +
        "Окна: \(windows)\n" +
        "Пробег: \(mileage) километров\n" +
        "Прицеп: \(trailerFull)\n"
    }
}

extension TrunkCar{
func trailer(action: trailer) {
    if action == .empty{
        self.trailerFull = .empty
    }else if action == .full{
        self.trailerFull = .full
    }
}
}

var Opel = SportCar(model: "Opel", year: 2020, engineVolume: 6, engine: .off, windows: .close, mileage: 1000)
var Kamaz = TrunkCar(model: "KAMAZ", year: 2001, windows: .close, engine: .off, mileage: 1200, trailerFull: .empty)

print(Opel.description)
print(Kamaz.description)

Opel.Windows(action: .open)
Kamaz.engine(action: .on)
Kamaz.trailer(action: .full)

print(Opel.description)
print(Kamaz.description)
