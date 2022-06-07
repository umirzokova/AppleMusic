//
//  MyPlaylistTableViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 06/06/22.
//

import UIKit

class MyPlaylistTableViewCell: UITableViewCell {

    @IBOutlet weak var myPlaylistIcon: UIImageView!
    @IBOutlet weak var myPlaylistLabel: UILabel!
    @IBOutlet weak var icon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
