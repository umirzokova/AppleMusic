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
    
    //Change color of playButton
    @IBAction func onClickPlayButton(_ sender: Any) {
        if playButton.backgroundColor == .systemGray5 {
            playButton.backgroundColor = .skyBlue
        } else {
            playButton.backgroundColor = .systemGray5
        }
        
        
        
//        if playButton.backgroundColor == .systemGray5 {
//            playButton.backgroundColor = UIColor.skyBlue
//            shuffleButton.backgroundColor = .skyBlue
//        } else if playButton.backgroundColor == .skyBlue {
//            shuffleButton.backgroundColor =
//            playButton.backgroundColor = .skyBlue
//        }
    }
    
    //MARK: - life cycle of VC
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
