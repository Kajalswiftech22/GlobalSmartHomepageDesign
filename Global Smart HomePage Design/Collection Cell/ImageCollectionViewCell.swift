//
//  ImageCollectionViewCell.swift
//  Global Smart HomePage Design
//
//  Created by intern on 9/4/23.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {

//    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var cellImageView: UIImageView!{
        didSet{
            cellImageView.layer.cornerRadius = 10
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()

        cellImageView.contentMode = .scaleAspectFill
    }

    func configure(model: IconLabelModel) {
        self.cellImageView.image = UIImage(named: model.image)
    }
}
