//
//  RadioViewControllers.swift
//  AppleMusic
//
//  Created by Nargiz on 02/06/22.
//

import Foundation
import UIKit

class RadioViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    //MARK: - my data
    var rcItems: [RadioCollectionViewItems] = [
    RadioCollectionViewItems(genreName: "Soft Pop Station", subtitleGenreName: "Apple Music Pop", albumImage: "IMG_20220606_103658_821"),
    RadioCollectionViewItems(genreName: "Smooth Jazz Station", subtitleGenreName: "Apple Music Jazz", albumImage: "IMG_20220606_103650_495"),
    RadioCollectionViewItems(genreName: "Hip-Hop Station", subtitleGenreName: "Apple Music Hip-Hop", albumImage: "IMG_20220606_103651_967")
    ]
    
    //MARK: - life cycle of ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        rcItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RadioCollection", for: indexPath) as! RadioCollectionViewCell
        let rcItem = rcItems[indexPath.row]
        cell.GenreOfMusicLabel.text = rcItem.genreName
        cell.subtitleLabel.text = rcItem.subtitleGenreName
        cell.image.image = UIImage(named: rcItem.albumImage)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320, height: 256)
    }
    
    //MARK:  - function for UIPresentationViewController
    @IBAction func onClickPlayer(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "PlayerViewController") as! PlayerViewController
        self.present(viewController, animated: true)
    }
}
