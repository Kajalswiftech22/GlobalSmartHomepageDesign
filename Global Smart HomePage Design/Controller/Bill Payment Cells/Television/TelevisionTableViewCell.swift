//
//  TelevisionTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

class TelevisionTableViewCell: UITableViewCell {

    @IBOutlet weak var televisionImageView: UIImageView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bgView.layer.cornerRadius = bgView.frame.height/2
        televisionImageView.layer.cornerRadius = televisionImageView.frame.height/2
        televisionImageView.contentMode = .scaleToFill
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(model: TelevisionModel) {
        self.televisionImageView.image = UIImage(named: model.image)
        self.label.text = model.title
    }
}
