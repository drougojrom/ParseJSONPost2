import Foundation

public struct CountryObj: Codable {
    public let country: String?
}

public struct Location: Codable {
    public let name: String?
    public let id: String?
    public let countryObj: CountryObj?
    
}

public class SwiftyUser: Codable {
    
    public var firstName: String? = nil
    public var lastName: String? = nil
    public var email: String? = nil
    public var accessLevel: Int? = 0
    public var lastPasswordChange: String? = nil
    public var authenticationId: String? = nil
    public var avatarURL: String? = nil
    public var location: Location? = nil
    
}
