//
//  CollectionViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 8/29/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var cellImageView: UIImageView!
    
    @IBOutlet weak var cellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        cellImageView.contentMode = .scaleAspectFit

    }
    
    func configure(model: IconLabelModel) {
        self.bgView.backgroundColor = model.color
        self.cellImageView.image = UIImage(systemName:model.image)
        self.cellLabel.text = model.title
        self.bgView.layer.cornerRadius = self.bgView.frame.height / 2
        cellImageView.tintColor = .white
    }
    
}
