//
//  SecondViewController.swift
//  2homework3m
//
//  Created by mavluda on 10/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var mobileNumber: UITextField!
    
    @IBOutlet weak var eMail: UITextField!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    private var passwordTapped = false
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    private var confirmPasswordTapped = false
    
    private func checkTextField(_ field: UITextField){
        if field.text?.isEmpty ?? true{
            field.layer.borderColor = UIColor.red.cgColor
            field.layer.borderWidth = 1
            field.placeholder = "Заполните поле"
        }
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        if fullName.text?.isEmpty ?? true || mobileNumber.text?.isEmpty ?? true || eMail.text?.isEmpty ?? true || userName.text?.isEmpty ?? true || password.text?.isEmpty ?? true || confirmPassword.text?.isEmpty ?? true || mobileNumber.text?.isEmpty ?? true || mobileNumber.text?.isEmpty ?? true{
            checkTextField(fullName)
            checkTextField(mobileNumber)
            checkTextField(eMail)
            checkTextField(userName)
            checkTextField(password)
            checkTextField(confirmPassword)
        }else{
            let vc: FifthViewController = storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    @IBAction func signInButtonTapped(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBOutlet weak var passwordButton: UIButton!
    
    @IBOutlet weak var confirmPasswordButton: UIButton!
    
    @IBAction func passwordButtonTapped(_ sender: Any) {
        var image = ""
        if passwordTapped{
            image = "eye.slash"
            passwordButton.setImage(UIImage(systemName: image), for: .normal)
            passwordTapped = false
            passwordButton.tintColor = .systemGray2
            password.isSecureTextEntry = true
        }else{
            image = "eye"
            passwordButton.setImage(UIImage(systemName: image), for: .normal)
            passwordTapped = true
            password.isSecureTextEntry = false
        }
    }
    
    @IBAction func confirmButtonPressed(_ sender: Any) {
        var image = ""
        if confirmPasswordTapped{
            image = "eye.slash"
            confirmPasswordButton.setImage(UIImage(systemName: image), for: .normal)
            confirmPasswordTapped = false
            confirmPasswordButton.tintColor = .systemGray2
            confirmPassword.isSecureTextEntry = true
        }else{
            image = "eye"
            confirmPasswordButton.setImage(UIImage(systemName: image), for: .normal)
            confirmPasswordTapped = true
            confirmPassword.isSecureTextEntry = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        password.isSecureTextEntry = true
        confirmPassword.isSecureTextEntry = true
    }

}
