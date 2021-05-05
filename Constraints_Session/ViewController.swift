//
//  ViewController.swift
//  Constraints_Session
//
//  Created by Aravindhan Natarajan on 05/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.subviews.forEach({
            $0.removeFromSuperview()
        })
        
        self.preapareSubViews()
    }


}

