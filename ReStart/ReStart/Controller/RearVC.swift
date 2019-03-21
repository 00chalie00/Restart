//
//  RearVC.swift
//  ReStart
//
//  Created by formathead on 15/03/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

class RearVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
        
    }

    //Pressed Login and change LoginVC
    @IBAction func pressedLogin(_ sender: Any) {
        performSegue(withIdentifier: "gotoLoginVC", sender: nil)
    }
    
    
    
    
    
    
    
}//End Of The Class

