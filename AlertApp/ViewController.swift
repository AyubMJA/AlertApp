//
//  ViewController.swift
//  AlertApp
//
//  Created by Ayub Ali on 2021-03-09.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var confirmPasswordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func signupClicked(_ sender: UIButton) {
        
        /*
        let alert = UIAlertController(title: "Error", message: "username not found!", preferredStyle: UIAlertController.Style.alert)
        let okayButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
            //button clicked
            print("button clicked")
        }
        alert.addAction(okayButton)
        self.present(alert, animated: true, completion: nil)
        */
        
        if usernameText.text == ""{
            let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                print("button pressed")
            }
            alert.addAction(okayButton)
            self.present(alert, animated: true, completion: nil)
        } else if passwordText.text == ""{
            let alert = UIAlertController(title: "Error", message: "Password not found!", preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                print("button pressed")
            }
            alert.addAction(okayButton)
            self.present(alert, animated: true, completion: nil)
        }else if confirmPasswordText.text == "" || confirmPasswordText.text != passwordText.text{
            let alert = UIAlertController(title: "Error", message: "Confirm password not found! or password doesn't match from password on top", preferredStyle: UIAlertController.Style.alert)
            let okayButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { (UIAlertAction) in
                print("button pressed")
            }
            alert.addAction(okayButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

