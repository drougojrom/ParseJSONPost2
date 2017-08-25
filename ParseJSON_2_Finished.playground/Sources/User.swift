import Foundation

public class User {
    
    public var firstName: String? = nil
    public var lastName: String? = nil
    public var email: String? = nil
    public var accessLevel: String? = nil
    public var lastPasswordChange: String? = nil
    public var authenticationId: String? = nil
    public var avatarURL: String? = nil
    
    public convenience init(json: [String: Any]?) {
        self.init()
        
        if let json = json {
            update(json: json)
        }
    }
    
    func update(json: [String: Any]) {
        
        if let firstName = json["firstName"] as? String {
            self.firstName = firstName
        }
        
        if let lastName = json["lastName"] as? String {
            self.lastName = lastName
        }
        
        if let id = json["id"] as? String {
            self.authenticationId = id
        }
        
        if let email = json["email"] as? String  {
            self.email = email
        }
        
        if let accessLevel = json["accessLevel"] as? String  {
            self.accessLevel = accessLevel
        }
        
        if let userAvatar = json["profileImageUrl"] as? String  {
            self.avatarURL = userAvatar
        }
        
        if let lastPasswordChange = json["lastPasswordChangeDate"] as? String  {
            self.lastPasswordChange = lastPasswordChange
        }
    }
}
