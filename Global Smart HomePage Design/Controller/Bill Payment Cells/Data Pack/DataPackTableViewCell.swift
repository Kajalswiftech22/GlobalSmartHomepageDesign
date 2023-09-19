//
//  DataPackTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

class DataPackTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var dataPackImageView: UIImageView!
    @IBOutlet weak var dataLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        bgView.layer.cornerRadius = bgView.frame.height/2
        dataPackImageView.layer.cornerRadius = dataPackImageView.frame.height/2
        dataPackImageView.contentMode = .scaleToFill
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(model: DataPackModel){
            self.dataPackImageView.image = UIImage(named: model.image)
            self.dataLabel.text = model.title
    }
}
