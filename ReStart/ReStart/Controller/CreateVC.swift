//
//  CreateVC.swift
//  ReStart
//
//  Created by formathead on 29/03/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

class CreateVC: UIViewController {

    //Outlet
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var avIMG: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //I can choose the Avatar when this BTN pressed
    @IBAction func chooseAvatar(_ sender: Any) {
        performSegue(withIdentifier: "gotoAvatarVC", sender: nil)
    }
    
    //I can choose the Background Color when this BTN pressed
    @IBAction func generateBG(_ sender: Any) {
        
    }
    
    //I can create a account when this BTN pressed
    @IBAction func createAccount(_ sender: Any) {
        
    }
}// End Of The Class

