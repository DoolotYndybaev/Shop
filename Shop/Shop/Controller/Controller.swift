//
//  Controller.swift
//  Shop
//
//  Created by Doolot on 10/6/22.
//

import UIKit

class Controller{
    
private weak var view: UIViewController?
private var model: Model!
    
    init(view: UIViewController){
        self.view = view
        self.model = Model(controller: self)
    }
    
    func setUserToModel(user: User){
        model.setData(user: user)
    }
    func getInfoUser() -> [String] {
        return model.userInfoFromModel()
    }
}
