//
//  InternetTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

class InternetTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var internetImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bgView.layer.cornerRadius = bgView.frame.height/2
        internetImageView.layer.cornerRadius = internetImageView.frame.height/2
        internetImageView.contentMode = .scaleToFill
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func configure(model: InternetModel) {
        self.internetImageView.image = UIImage(named: model.image)
        self.label.text = model.title
    }
}
