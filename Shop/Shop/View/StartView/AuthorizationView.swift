//
//  RegistrationView.swift
//  Shop
//
//  Created by Doolot on 3/6/22.
//

import UIKit
import SnapKit

class AuthorizationView: UIViewController{
    
    private var logoImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "logoImage")
        return view
    }()
    private var lineLeftView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1)
        return view
    }()
    private var lineRightView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1)
        return view
    }()
    private var firstLabel: UILabel = {
        let view = UILabel()
        view.text = "HELLO !"
        view.textColor = UIColor(red: 0.375, green: 0.375, blue: 0.375, alpha: 1)
        view.font = UIFont.boldSystemFont(ofSize: 30)
        return view
    }()
    private var secondLabel: UILabel = {
        let view = UILabel()
        view.text = "WELCOME BACK"
        view.textColor = UIColor(red: 0.188, green: 0.188, blue: 0.188, alpha: 1)
        view.font = UIFont.boldSystemFont(ofSize: 30)
        return view
    }()
    private var viewInSuperView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOpacity = 1
        return view
    }()
    private var emailTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Email"
        return view
    }()
    private var lineBetweenView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1)
        return view
    }()
    private var passwordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Password"
        return view
    }()
    private var forGotPasswordButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .white
        view.setTitle("Forgot Password", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.layer.cornerRadius = 10
        view.titleLabel?.font = .boldSystemFont(ofSize: 20)
//        view.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        return view
    }()
    private var logInButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = UIColor(red: 36/255, green: 26/255, blue: 26/255, alpha: 1)
        view.setTitle("Log in", for: .normal)
        view.setTitleColor(UIColor.white, for: .normal)
        view.layer.cornerRadius = 10
        view.titleLabel?.font = .systemFont(ofSize: 20)
        view.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        return view
    }()
    private var signUpButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .white
        view.setTitle("Sign UP", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.layer.cornerRadius = 10
        view.titleLabel?.font = .boldSystemFont(ofSize: 20)
        view.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        view.backgroundColor = .white
        setupSubView()
    }
    func setupSubView(){
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.safeArea.top).offset(20)
        }
        view.addSubview(lineLeftView)
        lineLeftView.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.left.equalToSuperview().offset(20)
            make.right.equalTo(logoImage.snp.left).offset(-20)
            make.top.equalTo(view.safeArea.top).offset(50)
        }
        view.addSubview(lineRightView)
        lineRightView.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.right.equalToSuperview().offset(-20)
            make.left.equalTo(logoImage.snp.right).offset(20)
            make.top.equalTo(view.safeArea.top).offset(50)
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
        view.addSubview(viewInSuperView)
        viewInSuperView.snp.makeConstraints { make in
            make.top.equalTo(secondLabel.snp.bottom).offset(30)
            make.right.equalToSuperview().offset(-10)
            make.left.equalToSuperview().offset(10)
            make.height.equalToSuperview().dividedBy(2.3)
        }
        viewInSuperView.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        viewInSuperView.addSubview(lineBetweenView)
        lineBetweenView.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(1)
        }
        viewInSuperView.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(lineBetweenView.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        viewInSuperView.addSubview(forGotPasswordButton)
        forGotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        viewInSuperView.addSubview(logInButton)
        logInButton.snp.makeConstraints { make in
            make.top.equalTo(forGotPasswordButton.snp.bottom).offset(15)
            make.height.equalTo(60)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        viewInSuperView.addSubview(signUpButton)
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(logInButton.snp.bottom).offset(15)
            make.height.equalTo(60)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
    }
    @objc func VCChanger(sender: UIButton) {
        if sender.titleLabel?.text == "Get Started"{
            navigationController?.pushViewController(AuthorizationView(), animated: true)
        }else if sender.titleLabel?.text == "Sign UP"{
            navigationController?.pushViewController(RegistrationView(), animated: true)
        }
    }
}
