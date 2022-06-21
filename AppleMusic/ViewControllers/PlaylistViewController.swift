//
//  PlaylistViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 06/06/22.
//

import Foundation
import UIKit

class PlaylistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var playlistTableView: UITableView!
    
    //MARK: - my data
    var playlistItems: [PlaylistItems] = [
        PlaylistItems(playlistIcon: "plus", playlistLabel: "New Playlist..."),
        PlaylistItems(playlistIcon: "music.note.list", playlistLabel: "My Playlist")
    ]
    
    //MARK: - life cycle of VC
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        playlistItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let plItem = playlistItems[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewPlaylist", for: indexPath) as! PlaylistTableViewCell
        cell.newPlaylistIcon.image = UIImage(systemName: plItem.playlistIcon)
        cell.newPlaylistLabel.text = plItem.playlistLabel
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK: - processing segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlaylistToNewPlaylist",
           let vc = segue.destination as? NewPlaylistViewController,
           let indexpath = playlistTableView.indexPathForSelectedRow {
            vc.title = playlistItems[indexpath.row].playlistLabel
        }
    }
}
