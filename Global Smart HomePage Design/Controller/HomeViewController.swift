//
//  HomeViewController.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/25/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var interest: UIView!{
        didSet{
            interest.layer.cornerRadius = 4
        }
    }
    
    @IBOutlet weak var fundTransferView: UIView!{
        didSet{
            fundTransferView.layer.cornerRadius = 6
        }
    }
    
    @IBOutlet weak var viewStatement: UIView!{
        didSet{
            viewStatement.layer.cornerRadius = 6
        }
    }
    
    @IBOutlet weak var threeDotView: UIView!{
        didSet{
            threeDotView.layer.cornerRadius = 6
        }
    }
    
    @IBOutlet weak var lastDaysTransaction: UIView!{
        didSet{
            lastDaysTransaction.layer.cornerRadius = 8
        }
    }
    @IBOutlet weak var qrView: UIView!{
        didSet{
            qrView.layer.cornerRadius = qrView.frame.height/2
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
