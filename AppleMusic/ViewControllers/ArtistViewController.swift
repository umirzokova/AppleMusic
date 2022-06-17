//
//  ArtistViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 08/06/22.
//

import Foundation
import UIKit

class ArtistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var artists: [Artists] = [
        Artists(artistName: "Rihanna", artistImage: "person.fill", music: [
            ArtistItems(songName: "Unfaithful"),
            ArtistItems(songName: "Umbrella"),
            ArtistItems(songName: "Russian Roulette"),
            ArtistItems(songName: "Take A Bow"),
            ArtistItems(songName: "Diamonds")
        ]),
        Artists(artistName: "Maroon5", artistImage: "person.fill", music: [
            ArtistItems(songName: "Animals"),
            ArtistItems(songName: "Girls Like You"),
            ArtistItems(songName: "Sugar"),
            ArtistItems(songName: "Beatiful Mistakes"),
            ArtistItems(songName: "Memories")
        ]),
        Artists(artistName: "Justin Timberlake", artistImage: "person.fill", music: [
            ArtistItems(songName: "Mirrors"),
            ArtistItems(songName: "Cry Me A River")
        ]),
        Artists(artistName: "Beyounce", artistImage: "person.fill", music: [
            ArtistItems(songName: "Halo")
        ])
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let artist = artists[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArtistsTableView", for: indexPath) as! ArtistTableViewCell
        cell.artistNameLabel.text = artist.artistName
        cell.artistsImage.image = UIImage(systemName: artist.artistImage)
        cell.countOfSongLabel.text = artist.getSongsCount()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ArtistsToArtistItems",
           let vc = segue.destination as? ArtistItemsViewController,
           let indexPath = tableView.indexPathForSelectedRow {
            vc.title = artists[indexPath.row].artistName
            vc.artistItem1 = artists[indexPath.row]
        }
    }
}
