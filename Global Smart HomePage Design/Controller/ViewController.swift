//
//  ViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rootVC = UIStoryboard(name: "LoginViewController", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        let navVC = UINavigationController()
        navVC.setViewControllers([rootVC], animated: false)
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: false)
        
    }
}

