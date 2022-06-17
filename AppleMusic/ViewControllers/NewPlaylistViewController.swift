//
//  NewPlaylistViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 17/06/22.
//

import Foundation
import UIKit

class NewPlaylistViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var shuffleButton: UIButton!
    
    @IBAction func onClickPlayButton(_ sender: Any) {
        if playButton.backgroundColor == .gray {
            playButton.backgroundColor = UIColor.skyBlue
        } else {
            playButton.backgroundColor = .gray
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
