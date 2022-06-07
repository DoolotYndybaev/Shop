//
//  ViewController.swift
//  Shop
//
//  Created by Doolot on 31/5/22.
//

import UIKit
import SnapKit

class StartingView: UIViewController {
    
    private var presentImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "presentImage")
        return view
    }()
    private var firstLabel: UILabel = {
        let view = UILabel()
        view.text = "MAKE YOUR"
        view.textColor = UIColor(red: 0.375, green: 0.375, blue: 0.375, alpha: 1)
        view.font = UIFont.boldSystemFont(ofSize: 30)
        return view
    }()
    private var secondLabel: UILabel = {
        let view = UILabel()
        view.text = "HOME BEAUTIFUL"
        view.textColor = UIColor(red: 0.188, green: 0.188, blue: 0.188, alpha: 1)
        view.font = UIFont.boldSystemFont(ofSize: 40)
        return view
    }()
    private var thirdLabel: UILabel = {
        let view = UILabel()
        view.text = "The best simple place where you discover most wonderful furnitures  and make your home beautiful"
        view.textColor = UIColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        view.font = UIFont.systemFont(ofSize: 20)
        view.numberOfLines = 0
        return view
    }()
    private var getStartButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = UIColor(red: 36/255, green: 26/255, blue: 26/255, alpha: 1)
        view.setTitle("Get Started", for: .normal)
        view.setTitleColor(UIColor.white, for: .normal)
        view.layer.cornerRadius = 10
        view.titleLabel?.font = .systemFont(ofSize: 20)
        view.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubView()
    }
    func setupSubView(){
        view.addSubview(presentImage)
        presentImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        view.addSubview(firstLabel)
        firstLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.equalToSuperview().offset(250)
        }
        view.addSubview(secondLabel)
        secondLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.equalToSuperview().offset(300)
        }
        view.addSubview(thirdLabel)
        thirdLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(400)
            make.left.equalToSuperview().offset(55)
            make.right.equalToSuperview().offset(-55)
        }
        view.addSubview(getStartButton)
        getStartButton.snp.makeConstraints { make in
            make.centerY.equalToSuperview().offset(240)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        
    }
    @objc func VCChanger(sender: UIButton) {
        if sender.titleLabel?.text == "Get Started"{
            navigationController?.pushViewController(AuthorizationView(), animated: true)
        }
    }
}

