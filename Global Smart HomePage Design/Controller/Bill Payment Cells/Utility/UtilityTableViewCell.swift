//
//  UtilityTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

class UtilityTableViewCell: UITableViewCell {
    

    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var utilityImgaeView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bgView.layer.cornerRadius = bgView.frame.height/2
        utilityImgaeView.layer.cornerRadius = utilityImgaeView.frame.height/2
        utilityImgaeView.contentMode = .scaleToFill
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(model: UtilityModel) {
        self.utilityImgaeView.image = UIImage(named: model.image)
        self.label.text = model.title
    }
    
}
