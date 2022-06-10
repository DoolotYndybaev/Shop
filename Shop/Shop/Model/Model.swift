//
//  Model.swift
//  Shop
//
//  Created by Doolot on 10/6/22.
//

import Foundation
class Model {
    
    private weak var controller: Controller?
    private var data: Data!
    
    init(controller: Controller) {
        self.controller = controller
        self.data = Data(model: self)
    }
    
    func setData(user: User) {
        data.set(user: user)
    }
    func userInfoFromModel() -> [String] {
        return data.userFromData()
    }
}
