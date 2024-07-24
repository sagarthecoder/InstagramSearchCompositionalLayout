//
//  InstaSearchGridCollectionViewCell.swift
//  Compositional-Layout-Practice
//
//  Created by Sagar Chandra Das on 24/7/24.
//

import UIKit

class InstaSearchGridCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 8.0
        
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        label.text = ""
    }
}
