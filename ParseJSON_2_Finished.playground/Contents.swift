//: Playground - noun: a place where people can play

import Foundation

func getJSON() -> User? {
    
    if let path = Bundle.main.path(forResource: "test", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
            let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: Any]
            return User(json: json)
        } catch let error {
            print(error)
        }
    }
    return nil
}

func getSwiftyJSON() -> SwiftyUser? {
    if let path = Bundle.main.path(forResource: "test", ofType: "json") {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
            let decoder = JSONDecoder()
            do {
                let user = try decoder.decode(SwiftyUser.self, from: data)
                return user
            } catch {
                print("error trying to convert data to JSON")
                print(error)
            }
        } catch let error {
            print(error)
        }
    }
    return nil
}

let swiftyUser = getSwiftyJSON()

if let location = swiftyUser?.location {
    print(location)
}

