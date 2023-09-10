//
//  ISPPaymentTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/10/23.
//

import UIKit

class ISPPaymentTableViewCell: UITableViewCell {

     
    @IBOutlet weak var palsView: UIView!{
        didSet{
            palsView.layer.cornerRadius = palsView.frame.height/2
        }
    }
    
    @IBOutlet weak var palsImageView: UIImageView!{
        didSet{
            palsImageView.layer.cornerRadius = palsImageView.frame.height/2
        }
    }
    @IBOutlet weak var successBtn: UIButton!{
        didSet{
            successBtn.layer.cornerRadius = successBtn.frame.height/2
        }
    }
    

    @IBOutlet weak var ispLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(model: IconModels) {
        self.palsImageView.image = UIImage(named: model.image)
        self.ispLabel.text = model.title
        self.dateLabel.text = model.description
        self.numberLabel.text = model.amount
        self.successBtn.setTitle(model.status, for: .normal)
    }
    
}
