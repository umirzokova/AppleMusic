//
//  DownloadedViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 09/06/22.
//

import Foundation
import UIKit

class DownloadedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    
    //MARK: - my data
    var groups: [LibraryGroups] = [
        LibraryGroups(albumName: "Playlists", imageName: "music.note.list", next: "chevron.right"),
        LibraryGroups(albumName: "Artists", imageName: "music.mic", next: "chevron.right"),
        LibraryGroups(albumName: "Albums", imageName: "folder", next: "chevron.right"),
        LibraryGroups(albumName: "Songs", imageName: "music.note", next: "chevron.right"),
        LibraryGroups(albumName: "Genres", imageName: "guitars", next: "chevron.right")
    ]
    
    //MARK: - life cycle of VC
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - methods of TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let downloadGroup = groups[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Downloaded", for: indexPath) as! DonwloadedTableViewCell
        cell.downloadIcon.image = UIImage(systemName: downloadGroup.imageName)
        cell.downloadItemNameLabel.text = downloadGroup.albumName
        cell.chevronRightIcon.image = UIImage(systemName: downloadGroup.next)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK: - methods of CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentlyDownloadedCell", for: indexPath) as! RecentlyDownloadedCollectionViewCell
        cell.downloadImage.image = UIImage(systemName: "music.note.list")
        cell.singerNamelabel.text = "Rihanna"
        cell.songNameLabel.text = "Umbrella"
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 175)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}
