//
//  PlaylistViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 06/06/22.
//

import Foundation
import UIKit

class PlaylistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var playlistItems: [PlaylistItems] = [
        PlaylistItems(playlistIcon: "plus", playlistLabel: "New Playlist..."),
        PlaylistItems(playlistIcon: "music.note.list", playlistLabel: "My Playlist")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let plItem = playlistItems[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewPlaylist", for: indexPath) as! PlaylistTableViewCell
        cell.newPlaylistIcon.image = UIImage(systemName: plItem.playlistIcon)
        cell.newPlaylistLabel.text = plItem.playlistLabel
        return cell
    }
}
