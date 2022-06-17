//
//  DonwloadedTableViewCell.swift
//  AppleMusic
//
//  Created by Nargiz on 09/06/22.
//

import UIKit

class DonwloadedTableViewCell: UITableViewCell {

    @IBOutlet weak var downloadIcon: UIImageView!
    @IBOutlet weak var chevronRightIcon: UIImageView!
    @IBOutlet weak var downloadItemNameLabel: UILabel!
    
    
//    @IBOutlet weak var downloadIcon: UIImageView!
//    @IBOutlet weak var downloadItemNameLabel: UILabel!
//    @IBOutlet weak var chevronRightIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
