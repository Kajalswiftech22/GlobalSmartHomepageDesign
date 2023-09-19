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
    
    @IBOutlet weak var eyeImageView: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    
    var isContentVisible = true
    let userDefaults = UserDefaults.standard
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(eyeImageTapped))
               eyeImageView.isUserInteractionEnabled = true
               eyeImageView.addGestureRecognizer(tapGesture)
        
        UserDefaults.standard.set("98756423", forKey: "contentLabel")
        if let content = UserDefaults.standard.string(forKey: "contentLabel") {
            contentLabel.text = content
        }
    }
   
    
    @objc func eyeImageTapped() {
        
           isContentVisible.toggle()
//           contentLabel.text = isContentVisible ? "XXX" : "97597598027"

           eyeImageView.image = isContentVisible ? UIImage(systemName: "eye.fill") : UIImage(systemName: "eye.slash.fill")
       }
}
