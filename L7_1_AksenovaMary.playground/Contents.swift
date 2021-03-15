import UIKit

enum CandyBar: Error{
    case lostLot
    case accesError
    case noLot
    case hightPrice
}

struct Product{
    var brand: String
    var count: Int
    var price: Int
}

class SweetBox{
    
    var Sweets = [
        "Mars" : Product(brand: "Mars", count: 3, price: 30),
        "Oreo" : Product(brand: "Oreo", count: 0, price: 20),
        "BonAqua" : Product(brand: "BonAqua", count: 5, price: 25)
    ]
    
    var countMin = 0
    var errorValue = 100
    
    func sweetBay(itemBrand name:String, deposit: Int, error: Int) throws {
       
        guard let lot = Sweets[name] else {
            throw CandyBar.noLot
        }
        
        guard lot.count > countMin else {
            throw CandyBar.lostLot
        }
        
        guard error == errorValue else{
            throw CandyBar.accesError
        }
        
        guard deposit == lot.price else{
            throw CandyBar.hightPrice
        }
        
        print("Спасибо за покупку!")
    }
}


let collectionSweets = [
    "Chocolate" : "Mars",
    "Biscuit" : "Oreo",
    "Water" : "AquaMimerale"
]

func bay(collection: String, deposit: Int, funcToBay: SweetBox) throws {
    
    let serverMessage = 100
    let collectionBar = collectionSweets[collection] ?? "Выберете товар"
    
    try funcToBay.sweetBay(itemBrand: collectionBar,deposit: deposit, error: serverMessage)
}


do {
    try bay(collection: "Chocolate", deposit: 25, funcToBay: SweetBox())
} catch CandyBar.noLot {
    print("Такой продукт отсутствует в ассортименте.")
} catch CandyBar.lostLot {
    print("Данный товар закончился. Приносим изинения.")
} catch CandyBar.accesError {
    print("Автомат временно не наботает.")
} catch CandyBar.hightPrice {
    print("Внесите средства.")
}
