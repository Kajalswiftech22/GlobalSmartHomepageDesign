//
//  LoginViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/12/23.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func lOGINBtn(_ sender: Any) {
        let targetViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.navigationController?.pushViewController(targetViewController, animated: true)
    }
}
