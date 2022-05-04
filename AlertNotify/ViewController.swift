//
//  ViewController.swift
//  AlertNotify
//
//  Created by Mücahit Alperen Eryılmaz on 28.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    
    func alertMessage(title: String, messages: String) {
        
        let title = title
        let messages = messages
        
        let alert = UIAlertController(title: "\(title)!", message: "\(messages)! ", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
    }
     
    @IBAction func signupClicked(_ sender: Any) {
        
        
        
        if usernameTextField.text == "" {
            
            alertMessage(title: "Error", messages: "Username is empty")
             
        } else if passwordTextField.text == ""  {
            
            alertMessage(title: "Error", messages: "Password is empty")
            
        } else if passwordTextField.text != password2TextField.text {
            
            alertMessage(title: "Error", messages: "Password is not match")
             
        } else {
            
            alertMessage(title: "Success", messages: "Helal olsun kanka sonunda oldu")
            
        }
        
        
        
    }
    
}

