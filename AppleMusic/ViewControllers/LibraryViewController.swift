//
//  LibraryViewControllers.swift
//  AppleMusic
//
//  Created by Nargiz on 25/05/22.
//

import Foundation
import UIKit

class LibraryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //MARK: -  my data
    var groups: [LibraryGroups] = [
        LibraryGroups(albumName: "Playlists", imageName: "music.note.list", next: "chevron.right"),
        LibraryGroups(albumName: "Artists", imageName: "music.mic", next: "chevron.right"),
        LibraryGroups(albumName: "Albums", imageName: "folder", next: "chevron.right"),
        LibraryGroups(albumName: "Songs", imageName: "music.note", next: "chevron.right"),
        LibraryGroups(albumName: "Genres", imageName: "guitars", next: "chevron.right"),
        LibraryGroups(albumName: "Downloaded", imageName: "arrow.down.circle", next: "chevron.right")
    ]
    
    //MARK: - Life cycle of ViewController
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let group = groups[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Library", for: indexPath) as! LibraryGroupTableViewCell
        cell.iconOfGroup.image = UIImage(systemName: group.imageName)
        cell.groupTitle.text = group.albumName
        return cell
    }
    
    //MARK: - transation processing
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let selectedAlbumName = groups[indexPath.row].albumName
        
        if selectedAlbumName == "Playlists" {
            performSegue(withIdentifier: "LibraryToPlaylistItems", sender: self)
        } else if selectedAlbumName == "Artists" {
            performSegue(withIdentifier: "LibraryToArtistItems", sender: self)
        } else if selectedAlbumName == "Albums" {
            performSegue(withIdentifier: "LibraryToAlbumItems", sender: self)
        } else if selectedAlbumName == "Songs" {
            performSegue(withIdentifier: "LibraryToSongItems", sender: self)
        } else if selectedAlbumName == "Genres" {
            performSegue(withIdentifier: "LibraryToGenreItems", sender: self)
        } else if selectedAlbumName == "Downloaded" {
            performSegue(withIdentifier: "LibraryToDownloadedItems", sender: self)
        }
    }
    
    @IBAction func onClickPlayer2(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "PlayerViewController") as! PlayerViewController
        self.present(viewController, animated: true)
    }
}
