//
//  SearchViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 06/06/22.
//

import Foundation
import UIKit

class SearchViewController: UIViewController {
    
    let searchController = UISearchController()
    
    //MARK: - life cycle of VC
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
    }
}
