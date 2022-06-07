//
//  RadioCollectionViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 02/06/22.
//

import UIKit

class RadioCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var GenreOfMusicLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
