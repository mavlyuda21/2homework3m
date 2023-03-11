//
//  FourthViewController.swift
//  2homework3m
//
//  Created by mavluda on 11/3/23.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    @IBOutlet weak var confirmPasswordEyeButton: UIButton!
    
    @IBOutlet weak var passwordEyeButton: UIButton!
    
    private var passwordTapped = false
    
    @IBAction func passwordEyeButtonTapped(_ sender: Any) {
        var image = ""
        if passwordTapped{
            image = "eye.slash"
            passwordEyeButton.setImage(UIImage(systemName: image), for: .normal)
            passwordTapped = false
            passwordEyeButton.tintColor = .systemGray2
            passwordField.isSecureTextEntry = true
        }else{
            image = "eye"
            passwordEyeButton.setImage(UIImage(systemName: image), for: .normal)
            passwordTapped = true
            passwordField.isSecureTextEntry = false
        }
    }
    
    private var confirmPasswordTapped = false
    
    @IBAction func confirmEyeButtonTapped(_ sender: Any) {
        var image = ""
        if confirmPasswordTapped{
            image = "eye.slash"
            confirmPasswordEyeButton.setImage(UIImage(systemName: image), for: .normal)
            confirmPasswordTapped = false
            confirmPasswordEyeButton.tintColor = .systemGray2
            confirmPasswordField.isSecureTextEntry = true
        }else{
            image = "eye"
            confirmPasswordEyeButton.setImage(UIImage(systemName: image), for: .normal)
            confirmPasswordTapped = true
            confirmPasswordField.isSecureTextEntry = false
        }
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        
        if (passwordField.text?.isEmpty ?? true || confirmPasswordField.text?.isEmpty ?? true){
            if passwordField.text?.isEmpty ?? true{
                passwordField.layer.borderColor = UIColor.red.cgColor
                passwordField.layer.borderWidth = 1
                passwordField.placeholder = "Заполните поле"
            }else if confirmPasswordField.text?.isEmpty ?? true{
                confirmPasswordField.layer.borderColor = UIColor.red.cgColor
                confirmPasswordField.layer.borderWidth = 1
                confirmPasswordField.placeholder = "Заполните поле"
            }
            
        }else if (passwordField.hasText && confirmPasswordField.hasText) && passwordField.text == confirmPasswordField.text{
            let vc: FifthViewController = storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        submitButton.layer.cornerRadius = 15
        
        
        
        
    }
    


}
