//
//  LoginVC.swift
//  ReStart
//
//  Created by formathead on 21/03/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

@IBDesignable
class LoginVC: UIViewController {

    //Outlet
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func pressedClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Login
    @IBAction func pressedLogin(_ sender: Any) {
        guard let email = userName.text, userName.text != "" else {return}
        guard let password = userPassword.text, userPassword.text != "" else {return}
        
        UserService.instance.AuthRegister(email: email, password: password) {
            (success) in
            if success {
                print("Register Success")
                UserService.instance.AuthLogin(email: email, password: password, completion: { (success) in
                    if success {
                        print ("Login Success")
                    }
                })
            }
        }
    }
    
    //Don't have an account
    @IBAction func pressedCreate(_ sender: Any) {
        performSegue(withIdentifier: "gotoCreateVC", sender: nil)
    }
    
    
    
    
}//End Of The Class

