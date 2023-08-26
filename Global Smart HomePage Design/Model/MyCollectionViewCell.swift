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
       imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        commonInit()
//        
//        let images = [
//            UIImage(systemName: "menubar.dock.rectangle.badge.record"),
//            UIImage(systemName: "creditcard.fill"),
//            UIImage(systemName: "iphone"),
//            UIImage(systemName: "iphone.gen2.radiowaves.left.and.right"),
//            UIImage(systemName: "wifi"),
//            UIImage(systemName: "creditcard.circle"),
//            UIImage(systemName: "car.rear.waves.up.fill"),
//            UIImage(systemName: "beach.umbrella.fill")
//          
//        ].compactMap({ $0 })
//        imageView.image = images.randomElement()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
//           contentView.frame.size.width = contentView.frame.height
           
           // Make the cell circular
//           contentView.layer.cornerRadius = contentView.frame.width / 1
//           contentView.clipsToBounds = true
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
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
    func configure(with image: UIImage?) {
        imageView.image = image
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
      }
}
