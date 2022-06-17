//
//  RecentlyDownloadedCollectionViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 09/06/22.
//

import UIKit

class RecentlyDownloadedCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var downloadImage: UIImageView!
    @IBOutlet weak var singerNamelabel: UILabel!
    @IBOutlet weak var songNameLabel: UILabel!
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}
