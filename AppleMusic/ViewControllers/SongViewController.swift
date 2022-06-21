//
//  SongViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 08/06/22.
//

import Foundation
import UIKit

class SongViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var songTableView: UITableView!
    
    //MARK: - my data
    var songs: [Songs] = [
        Songs(songNames: "Memories", songsImageView: "music.note", artistName: "Maroon5"),
        Songs(songNames: "Umbrella", songsImageView: "music.note", artistName: "Rihanna"),
        Songs(songNames: "Diamonds", songsImageView: "music.note", artistName: "Rihanna"),
        Songs(songNames: "Animals", songsImageView: "music.note", artistName: "Maroon5"),
        Songs(songNames: "Mirrors", songsImageView: "music.note", artistName: "Justin Timberlake"),
        Songs(songNames: "Halo", songsImageView: "music.note", artistName: "Beyounce"),
        Songs(songNames: "Girls Like You", songsImageView: "music.note", artistName: "Maroon5"),
        Songs(songNames: "Sugar", songsImageView: "music.note", artistName: "Maroon5"),
        Songs(songNames: "Cry Me A River", songsImageView: "music.note", artistName: "Justin Timberlake"),
        Songs(songNames: "Take A Bow", songsImageView: "music.note", artistName: "Rihanna"),
        Songs(songNames: "Beatiful Mistakes", songsImageView: "music.note", artistName: "Maroon5"),
        Songs(songNames: "Russian Roulette", songsImageView: "music.note", artistName: "Rihanna"),
        Songs(songNames: "Unfaithful", songsImageView: "music.note", artistName: "Rihanna")
    ]
    
    //MARK: - Life cycle of ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let song = songs[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SongsTableView", for: indexPath) as! SongTableViewCell
        cell.songImage.image = UIImage(systemName: song.songsImageView)
        cell.songNameLabel.text = song.songNames
        cell.singerNamelabel.text = song.artistName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let mainVC = PlayerViewController()
        self.present(mainVC, animated: true)
    }
    
    //MARK: - processing segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SongsToMainViewController",
           let vc = segue.destination as? MainViewController,
           let indexpath = songTableView.indexPathForSelectedRow {
            vc.title = songs[indexpath.row].songNames
        }
    }
}
