//
//  LibraryViewControllers.swift
//  AppleMusic
//
//  Created by Nargiz on 25/05/22.
//

import Foundation
import UIKit

class LibraryViewController: UITableViewController {
    
    var groups: [LibraryGroups] = [
        LibraryGroups(albumName: "Playlists", imageName: "music.note.list", next: "chevron.right"),
        LibraryGroups(albumName: "Artists", imageName: "music.mic", next: "chevron.right"),
        LibraryGroups(albumName: "Albums", imageName: "folder", next: "chevron.right"),
        LibraryGroups(albumName: "Songs", imageName: "music.note", next: "chevron.right"),
        LibraryGroups(albumName: "Genres", imageName: "guitars", next: "chevron.right"),
        LibraryGroups(albumName: "Downloaded", imageName: "arrow.down.circle", next: "chevron.right")
    ]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let group = groups[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "LibraryGroupsTableView", for: indexPath) as! LibraryGroupTableViewCell
        cell.groupTitle.text = group.albumName
        cell.iconOfGroup.image = UIImage(systemName: group.imageName)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let selectedAlbumName = groups[indexPath.row].albumName
        
        if selectedAlbumName == "Playlists" {
            performSegue(withIdentifier: "LibraryToPlaylistItems", sender: self)
        } else if selectedAlbumName == "Albums" {
            performSegue(withIdentifier: "LibraryToAlbumItems", sender: self)
        }
        else if selectedAlbumName == "Artists" {
            performSegue(withIdentifier: "LibraryToArtistItems", sender: self)
        }
        else if selectedAlbumName == "Songs" {
            performSegue(withIdentifier: "LibraryToSongItem", sender: self)
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "LibraryToLibraryItems",
//            let vc = segue.destination as? PlaylistViewController,
//           let indexpath = tableView.indexPathForSelectedRow {
//            vc.title = groups[indexpath.row].albumName
//
//        }
//    }
}
