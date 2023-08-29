//
//  MyCollectionViewCell.swift
//  Global Smart HomePage Design
//
//  Created by Kajol   on 26/08/23.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MyCollectionViewCell"
    
   private let imageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
        
        //Making the size of the image small which is inside the cell
        let imageViewSize = CGSize(width: 30, height: 30)
        let xOffset = (contentView.bounds.width - imageViewSize.width) / 2
        let yOffset = (contentView.bounds.height - imageViewSize.height) / 2
        imageView.frame = CGRect(x: xOffset, y: yOffset, width: imageViewSize.width, height: imageViewSize.height)
    }

//    func configure(with model: IconLabelModel?) {
//        imageView.tintColor = .red
//        imageView.backgroundColor = .gray
//        imageView.contentMode = .scaleAspectFit
//        imageView.clipsToBounds = true
//        imageView.layer.cornerRadius = 15
////        imageView.image = image
//      }
}
