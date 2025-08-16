import UIKit

enum Animals{
    case cat,dog,rabbit,hedgeHog
}

let cat = Animals.dog

switch cat{
case .cat:
"This is a cat"
break
case .dog:
"This is a dog"
break
case .rabbit:
"This is a rabbit"
break
case .hedgeHog:
"This is a hedgehog"
break

}
enum Shortcut{
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
    
}

let appleWebsite = Shortcut.wwwUrl(path:  URL(string: "https://apple.com")!)

switch appleWebsite{
case.fileOrFolder(let url, let name):
    print("url is \(url)")
    break
case.wwwUrl(let path):
    print("url path is \(path)")
    break
default:
    print("IDK")
}
 
if case let .wwwUrl(path) = appleWebsite{
    path
}

let withoutYou = Shortcut.song(artist: "Symphony X", songName: "Without Y")

if case let Shortcut.song(_, songName) = withoutYou{
    songName
}





// Final


enum Vehicle{
    case car(manufacture: String, model: String)
    case bike(manufacture: String, model: String)
}

let car = Vehicle.car(manufacture: "Tesla", model: "X")

switch car{
case let .car(manufacture, _):
    manufacture
    break
case let .bike(manufacture,_):
        manufacture
    break
}

func getManufacture(from vehicle: Vehicle) -> String {
    switch car {
    case .car(let manufacture, let model):
        return manufacture + " -> " + model
    case .bike(let manufacture, let model):
        return manufacture
    }
}

print(getManufacture(from: car))
