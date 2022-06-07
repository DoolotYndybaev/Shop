//
//  RegistrationView.swift
//  Shop
//
//  Created by Doolot on 3/6/22.
//

import UIKit
import SnapKit
class RegistrationView: UIViewController{
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
        view.text = "WELCOME"
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
    private var namelTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Name"
        return view
    }()
    private var lineBetweenView1: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1)
        return view
    }()
    private var emailTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Email"
        return view
    }()
    private var lineBetweenView2: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1)
        return view
    }()
    private var passwordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Password"
        return view
    }()
    private var lineBetweenView3: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1)
        return view
    }()
    private var confPasswordTextField: UITextField = {
        let view = UITextField()
        view.placeholder = "Password"
        return view
    }()
    private var lineBetweenView4: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 189/255, green: 189/255, blue: 189/255, alpha: 1)
        return view
    }()
    private var signUpButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = UIColor(red: 36/255, green: 26/255, blue: 26/255, alpha: 1)
        view.setTitle("SIGN UP", for: .normal)
        view.setTitleColor(UIColor.white, for: .normal)
        view.layer.cornerRadius = 10
        view.titleLabel?.font = .systemFont(ofSize: 20)
        view.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        return view
    }()
    private var secondLabel: UILabel = {
        let view = UILabel()
        view.text = "Already have account?"
        view.textColor = UIColor(red: 0.188, green: 0.188, blue: 0.188, alpha: 0.7)
        return view
    }()
    private var signInButton: UIButton = {
        let view = UIButton(type: .system)
        view.backgroundColor = .white
        view.setTitle("SIGN IN", for: .normal)
        view.setTitleColor(UIColor.black, for: .normal)
        view.titleLabel?.font = .boldSystemFont(ofSize: 15)
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
            make.top.equalTo(view.safeArea.top).offset(100)
        }
        view.addSubview(viewInSuperView)
        viewInSuperView.snp.makeConstraints { make in
            make.top.equalTo(firstLabel.snp.bottom).offset(30)
            make.right.equalToSuperview().offset(-10)
            make.left.equalToSuperview().offset(10)
            make.height.equalToSuperview().dividedBy(1.6)
        }
        viewInSuperView.addSubview(namelTextField)
        namelTextField.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        viewInSuperView.addSubview(lineBetweenView1)
        lineBetweenView1.snp.makeConstraints { make in
            make.top.equalTo(namelTextField.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(1)
        }
        viewInSuperView.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(lineBetweenView1.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        viewInSuperView.addSubview(lineBetweenView2)
        lineBetweenView2.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(1)
        }
        viewInSuperView.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(lineBetweenView2.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        viewInSuperView.addSubview(lineBetweenView3)
        lineBetweenView3.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(1)
        }
        viewInSuperView.addSubview(confPasswordTextField)
        confPasswordTextField.snp.makeConstraints { make in
            make.top.equalTo(lineBetweenView3.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        viewInSuperView.addSubview(lineBetweenView4)
        lineBetweenView4.snp.makeConstraints { make in
            make.top.equalTo(confPasswordTextField.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(1)
        }
        viewInSuperView.addSubview(signUpButton)
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(lineBetweenView4.snp.bottom).offset(60)
            make.height.equalTo(60)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
        }
        viewInSuperView.addSubview(secondLabel)
        secondLabel.snp.makeConstraints { make in
            make.top.equalTo(signUpButton.snp.bottom).offset(40)
            make.left.equalToSuperview().offset(60)
        }
        viewInSuperView.addSubview(signInButton)
        signInButton.snp.makeConstraints { make in
            make.top.equalTo(signUpButton.snp.bottom).offset(35)
            make.left.equalTo(secondLabel.snp.right).offset(10)
        }
    }
    @objc func VCChanger(sender: UIButton) {
        if sender.titleLabel?.text == "SIGN IN"{
            navigationController?.pushViewController(AuthorizationView(), animated: true)
        } else if sender.titleLabel?.text == "SIGN UP"{
            navigationController?.pushViewController(AuthorizationView(), animated: true)
        }
    }
}
