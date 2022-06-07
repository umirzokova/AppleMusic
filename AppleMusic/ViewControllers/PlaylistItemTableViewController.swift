//
//  PlaylistItemTableViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 27/05/22.
//
import Foundation
import UIKit

class PlaylistItemTableViewController: UITableViewController {
    
    var playlistItems: [PlaylistItems] = [
    PlaylistItems(playlistName: "New Playlist...", playlistImage: "music.note.list"),
    PlaylistItems(playlistName: "My Playlist", playlistImage: "music.note.list")
    ]


    override func numberOfSections(in tableView: UITableView) -> Int {
       1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playlistItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let playlistItem = playlistItems[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaylistItemTableView", for: indexPath) as! PlaylistItemTableViewCell
        cell.playlistIemLabel.text = playlistItem.playlistName
        cell.playlistItemImage.image = UIImage(systemName: playlistItem.playlistImage)
        return cell
    }
}
