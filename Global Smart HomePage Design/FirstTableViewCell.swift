//
//  FirstTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/30/23.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    @IBOutlet weak var interestRateView: UIView!{
        didSet{
            interestRateView.layer.cornerRadius = 6
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
    @IBOutlet weak var threeDotsView: UIView!{
        didSet{
            threeDotsView.layer.cornerRadius = 6
        }
    }
    
    @IBOutlet weak var lastDaysTransaction: UIView!{
        didSet{
            lastDaysTransaction.layer.cornerRadius = 6
        }
    }
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

}
