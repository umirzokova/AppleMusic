//
//  AlbumViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 07/06/22.
//

import Foundation
import UIKit

class AlbumViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    //MARK: - life cycle of VC
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumsCollection", for: indexPath) as! AlbumsCollectionViewCell
        cell.albumsIcon.image = UIImage(systemName: "music.note")
        cell.albumsNameLabel.text = "English as a Second Language"
        cell.albumsSubtitleLabel.text = "Center for Educational D"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 180)
    }
}
