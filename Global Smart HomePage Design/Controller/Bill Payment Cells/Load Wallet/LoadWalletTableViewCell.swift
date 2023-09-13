//
//  LoadWalletTableViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/13/23.
//

import UIKit

class LoadWalletTableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!{
        didSet{
            bgView.layer.cornerRadius = bgView.frame.height/2
        }
    }
    
    @IBOutlet weak var loadWalletImageView: UIImageView!{
        didSet{
            loadWalletImageView.layer.cornerRadius = loadWalletImageView.frame.height/2
        }
    }
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure(model: LoadWalletModel) {
        self.loadWalletImageView.image = UIImage(named: model.image)
        self.myLabel.text = model.title
    }
    
}
