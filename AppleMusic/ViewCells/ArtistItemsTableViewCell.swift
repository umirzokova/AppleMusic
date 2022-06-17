//
//  ArtistItemsTableViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 15/06/22.
//

import UIKit

class ArtistItemsTableViewCell: UITableViewCell {

    @IBOutlet weak var artistIcon: UIImageView!
    @IBOutlet weak var artistItemsSongNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
