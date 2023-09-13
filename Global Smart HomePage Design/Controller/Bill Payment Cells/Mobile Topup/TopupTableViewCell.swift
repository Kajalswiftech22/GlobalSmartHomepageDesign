//
//  TopupTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

class TopupTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var topupImageView: UIImageView!
    @IBOutlet weak var topupLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bgView.layer.cornerRadius = bgView.frame.height/2
        topupImageView.layer.cornerRadius = topupImageView.frame.height/2
        topupImageView.contentMode = .scaleToFill
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(model: TopupModel){
            self.topupImageView.image = UIImage(named: model.image)
            self.topupLabel.text = model.title
    }
}

