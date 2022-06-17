//
//  Artists.swift
//  AppleMusic
//
//  Created by Nargiz on 16/06/22.
//

import Foundation
import UIKit

struct Artists {
    var artistName: String
    var artistImage: String
    var music: [ArtistItems]
    
    func getSongsCount() -> String {
        if music.isEmpty {
            return "(no songs)"
        } else {
            return "\(music.count) songs"
        }
    }
}
