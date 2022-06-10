//
//  HomeView.swift
//  Shop
//
//  Created by Doolot on 3/6/22.
//

import UIKit
import SnapKit
class HomeView: UIViewController{
    
    private var controller: Controller?
    
    private var nameUser: UILabel = {
        let view = UILabel()
        view.text = "Welcome"
        view.textColor = UIColor(red: 0.375, green: 0.375, blue: 0.375, alpha: 1)
        view.font = UIFont.boldSystemFont(ofSize: 30)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setupSubView()
    }
    func setupSubView(){
        view.addSubview(nameUser)
        nameUser.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
}
