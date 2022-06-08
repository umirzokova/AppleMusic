//
//  ArtistTableViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 08/06/22.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {

    @IBOutlet weak var artistsImage: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var countOfSongLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
