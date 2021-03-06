//
//  ViewController.swift
//  AlertProject
//
//  Created by Bahriye Begum Ultan Gungor on 12.08.2020.
//  Copyright © 2020 Bahriye Begum Ultan Gungor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found!")
        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found!")
        } else if passwordText.text != password2Text.text {
            makeAlert(titleInput: "Error", messageInput: "Passwords do no match")
        } else {
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
    }
    
    /*   let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
     
     let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
     // button clicked
     print("button clicked")
     }
     
     alert.addAction(okButton)
     // ne gösteriyim, animated istiyor musun, sonra bir işlem yapiyim mi.
     self.present(alert, animated: true, completion: nil)
     */
    
    
    func makeAlert(titleInput: String, messageInput:String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            // button clicked
            print("button clicked")
        }
        
        alert.addAction(okButton)
        // ne gösteriyim, animated istiyor musun, sonra bir işlem yapiyim mi.
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
    
}

