//
//  EasyPopTableViewCell.swift
//  AppleMusic
//
//  Created by Behruzinho on 17.06.2022.
//

import UIKit

class EasyPopTableViewCell: UITableViewCell {

    @IBOutlet var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
