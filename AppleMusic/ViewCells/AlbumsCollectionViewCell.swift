//
//  AlbumsCollectionViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 07/06/22.
//

import UIKit

class AlbumsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var albumsIcon: UIImageView!
    @IBOutlet weak var albumsNameLabel: UILabel!
    @IBOutlet weak var albumsSubtitleLabel: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
