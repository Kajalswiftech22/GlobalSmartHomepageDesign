//
//  BankingServicesCollectionViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/4/23.
//

import UIKit

class BankingServicesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.contentMode = .scaleAspectFill
        
    }
    
    func configure(model: IconLabelModel) {
        self.bgView.backgroundColor = model.color
        self.imageView.image = UIImage(systemName: model.image)
        self.label.text = model.title
        self.bgView.layer.cornerRadius = self.bgView.frame.height/2
        imageView.tintColor = .white
    }

}
