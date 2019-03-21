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
    }
    
    //Don't have an account
    @IBAction func pressedCreate(_ sender: Any) {
        performSegue(withIdentifier: "gotoCreateVC", sender: nil)
    }
    
    
    
    
}//End Of The Class

