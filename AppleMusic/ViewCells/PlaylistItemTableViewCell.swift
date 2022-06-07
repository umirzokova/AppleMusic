//
//  PlaylistItemTableViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 27/05/22.
//

import UIKit

class PlaylistItemTableViewCell: UITableViewCell {

    @IBOutlet weak var playlistIemLabel: UILabel!
    @IBOutlet weak var playlistItemImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
