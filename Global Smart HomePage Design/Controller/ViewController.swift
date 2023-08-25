//
//  ViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/24/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var threeDot: UIView!{
        didSet{
            threeDot.layer.cornerRadius = 8
        }
    }
    @IBOutlet weak var interestView: UIView!{
        didSet{
            interestView.layer.cornerRadius = 6
        }
    }
    @IBOutlet weak var fundTransferView: UIView!{
        didSet{
            fundTransferView.layer.cornerRadius = 8
        }
    }
    @IBOutlet weak var viewStatement: UIView!{
        didSet{
            viewStatement.layer.cornerRadius = 8
        }
    }
    @IBOutlet weak var thirtyDaysTransaction: UIView!{
        didSet{
            thirtyDaysTransaction.layer.cornerRadius = 6
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        let navVC = UINavigationController()
        navVC.setViewControllers([rootVC], animated: false)
        navVC.modalPresentationStyle = .fullScreen
        self.present(navVC, animated: false)
        
    }


}

