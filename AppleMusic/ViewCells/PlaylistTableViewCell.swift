//
//  PlaylistTableViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 06/06/22.
//

import UIKit

class PlaylistTableViewCell: UITableViewCell {
    
    @IBOutlet weak var newPlaylistIcon: UIImageView!
    @IBOutlet weak var newPlaylistLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
