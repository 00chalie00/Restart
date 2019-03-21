//
//  FrontVC.swift
//  ReStart
//
//  Created by formathead on 15/03/2019.
//  Copyright © 2019 formathead. All rights reserved.
//

import UIKit

class FrontVC: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
    }

}// End Of The Class

