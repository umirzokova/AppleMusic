//
//  LibraryGroupTableViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 25/05/22.
//

import UIKit

class LibraryGroupTableViewCell: UITableViewCell {
    @IBOutlet weak var iconOfGroup: UIImageView!
    @IBOutlet weak var groupTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
