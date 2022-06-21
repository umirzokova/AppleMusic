//
//  ArtistItemsViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 15/06/22.
//

import Foundation
import UIKit

class ArtistItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var artistItem1: Artists!
    
    //MARK: - my data
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artistItem1.music.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistItems", for: indexPath) as! ArtistItemsTableViewCell
        let artistItem = artistItem1.music[indexPath.row]
        cell.artistIcon.image = UIImage(systemName: "music.note.list")
        cell.artistItemsSongNameLabel.text = artistItem.songName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
