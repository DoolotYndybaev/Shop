//
//  Data.swift
//  Shop
//
//  Created by Doolot on 10/6/22.
//

import Foundation
struct User {
    let name: String
    let email: String
    let password: String
}
class Data {
    private weak var model: Model?
    
    let defaults = UserDefaults.standard
    let allInfo = "AllInfo"
    
    init(model: Model){
        self.model = model
    }
    
    func set(user: User) {
        defaults.set(user, forKey: allInfo)
    }
    
    func userFromData() -> [String] {
        guard let info = defaults.object(forKey: allInfo)
        else { return [] }
        
        return info as! [String]
    }
}
