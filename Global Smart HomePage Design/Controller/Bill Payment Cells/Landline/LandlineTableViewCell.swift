//
//  LandlineTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

class LandlineTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var landlineImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        bgView.layer.cornerRadius = bgView.frame.height/2
        landlineImageView.layer.cornerRadius = landlineImageView.frame.height/2
        landlineImageView.contentMode = .scaleToFill
    }
    
    func configure(model: LandlineModel){
            self.landlineImageView.image = UIImage(named: model.image)
            self.label.text = model.title
    }
    
}
