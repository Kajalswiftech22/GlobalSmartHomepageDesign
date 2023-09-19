//
//  InsuranceTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

class InsuranceTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var insuranceImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = bgView.frame.height/2
        insuranceImageView.layer.cornerRadius = insuranceImageView.frame.height/2
        insuranceImageView.contentMode = .scaleToFill
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(model: InsuranceModel) {
        self.insuranceImageView.image = UIImage(named: model.image)
        self.label.text = model.title
    }
    
}
