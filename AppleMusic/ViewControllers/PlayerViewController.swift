//
//  PlayerViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 17/06/22.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var songImageViews: UIImageView!
    @IBOutlet weak var singerNameLabel: UILabel!
    @IBOutlet weak var songNameLabel: UILabel!
    @IBOutlet weak var volumeUpButton: UIButton!
    @IBOutlet weak var volumeDownButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var forwardBackButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var sliderForVolume: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
