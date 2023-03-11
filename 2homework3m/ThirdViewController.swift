//
//  ThirdViewController.swift
//  2homework3m
//
//  Created by mavluda on 11/3/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var enterLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var getOTPButton: UIButton!
    
    @IBOutlet weak var codeField: UITextField!
    
    @IBOutlet weak var phoneNumberField: UITextField!
    
    
    @IBAction func getOTPTapped(_ sender: Any) {
        if phoneNumberField.text?.isEmpty ?? true{
            phoneNumberField.layer.borderWidth = 1
            phoneNumberField.layer.borderColor = UIColor.red.cgColor
            phoneNumberField.placeholder = "Enter number"
        }else{
            codeField.isEnabled = true
            phoneNumberField.layer.borderWidth = 0
        }
    }
    
    @IBAction func submitTapped(_ sender: Any) {
        if codeField.text?.isEmpty ?? true{
            codeField.layer.borderWidth = 1
            codeField.layer.borderColor = UIColor.red.cgColor
            codeField.placeholder = "Enter code"
        }else{
            let vc: FourthViewController = storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        codeField.isEnabled = false
        
        enterLabel.layer.cornerRadius = 10
        
        enterLabel.layer.borderWidth = 1
        enterLabel.layer.borderColor = UIColor.systemGray2.cgColor
      
        for button in [button1,button2,button3,button4,button5,button6]{
            button!.layer.borderColor = UIColor.black.cgColor
            button!.layer.borderWidth = 0.8
            button!.layer.cornerRadius = 10.4
        }
        getOTPButton.layer.cornerRadius = 15
        submitButton.layer.cornerRadius = 15
    }
    

}
