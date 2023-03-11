//
//  ViewController.swift
//  2homework3m
//
//  Created by mavluda on 9/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var signInLabel: UILabel!
    @IBOutlet weak var pacanImage: UIImageView!
    @IBOutlet weak var idOrMailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    private var pressed = false
    
    @IBAction func signInButtonTapped(_ sender: Any) {
        if idOrMailText.text?.isEmpty ?? true || passwordText.text?.isEmpty ?? true{
            if idOrMailText.text?.isEmpty ?? true {
                idOrMailText.layer.borderColor = UIColor.red.cgColor
                idOrMailText.layer.borderWidth = 1
                idOrMailText.placeholder = "Заполните поле"
            }
            if passwordText.text?.isEmpty ?? true{
                passwordText.layer.borderColor = UIColor.red.cgColor
                passwordText.layer.borderWidth = 1
                passwordText.placeholder = "Заполните поле"
            }
        }else{
            let vc: FifthViewController = storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    private var eyePressed = true
    
    
    @IBOutlet weak var eyeButton: UIButton!
    
    @IBAction func checkBoxButtonAction(_ sender: Any) {
        var image = ""
        if pressed{
            image = "unchecked"
            checkBoxButton.setImage(UIImage(named: image), for: .normal)
            checkBoxButton.tintColor = .black
            pressed = false
        }else{
            image = "checked"
            checkBoxButton.setImage(UIImage(named: image), for: .normal)
            pressed = true
        }
        
    }
    @IBOutlet weak var checkBoxButton: UIButton!
    
    
    @IBAction func eyeButtonTapped(_ sender: Any) {
        var image = ""
        if eyePressed{
            image = "eye.slash"
            eyeButton.setImage(UIImage(systemName: image), for: .normal)
            eyeButton.tintColor = .systemGray2
            eyePressed = false
            passwordText.isSecureTextEntry = true
        }else{
            image = "eye"
            eyeButton.setImage(UIImage(systemName: image), for: .normal)
            eyePressed = true
            passwordText.isSecureTextEntry = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        signInLabel.layer.opacity = 0.61
        passwordText.isSecureTextEntry = true
    }
}

