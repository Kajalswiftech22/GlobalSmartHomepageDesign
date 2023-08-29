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
        
        let rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        let navVC = UINavigationController()
        navVC.setViewControllers([rootVC], animated: false)
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: false)
        
    }
}

