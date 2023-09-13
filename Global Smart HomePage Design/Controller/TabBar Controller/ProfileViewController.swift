//
//  ProfileViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/25/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func logoutBtn(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: false)
    }
}

