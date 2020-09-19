//
//  ViewController.swift
//  HanYuko_v2
//
//  Created by Jacob Pernell on 9/14/20.
//  Copyright © 2020 Jacob Pernell. All rights reserved.
//

// TODO: Make utility folder with Constants struct that contains all strings
// TODO: Look up marks and todos

// TODO: FUTURE: v2 of this - all programmatic UI, use SwiftyJSON

import UIKit
import Alamofire

class ViewController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    
    // Font styling attributes
    let largeTitleFont = UIFont(name: "Rubik-Bold", size: 34) ?? UIFont(name: "Arial", size: 34)
    let normalTitleFont = UIFont(name: "Rubik-Bold", size: 17) ?? UIFont(name: "Arial", size: 17)
    let regularFont = UIFont(name: "Rubik-Regular", size: 17) ?? UIFont(name: "Arial", size: 17)
    let titleColor = UIColor(red: 0.10, green: 0.42, blue: 0.78, alpha: 1.00)

    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Set the title of the home screen
        title = "HanYuko Images"
        
        // Enable large header title for the home screen and set its properties
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // The BEEFY title
        let largeTitleTextAttributes: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.font: largeTitleFont!,
            NSAttributedString.Key.foregroundColor: titleColor
        ]
        // When you scroll up
        let titleTextAttributes: [NSAttributedString.Key: Any] = [
            NSAttributedString.Key.font: normalTitleFont!,
            NSAttributedString.Key.foregroundColor: titleColor
        ]
        navigationController?.navigationBar.largeTitleTextAttributes = largeTitleTextAttributes
        navigationController?.navigationBar.titleTextAttributes = titleTextAttributes
        
        // Adds search input to navigation area
        navigationItem.searchController = searchController
        
        fetchImages(query: "office")
    }
    
    func fetchImages(query: String) {
        let apiKey = "4se24g0iDGD4ZlKTHoh1LVanuCy1CegUCH0_zZlV030"
        let apiURL = "https://api.unsplash.com/search/photos?query=\(query)&client_id=\(apiKey)"
        
        let request = AF.request(apiURL)
        
        request.responseJSON { (data) in
            print(data)
            // TODO: plug this data into the UnsplashImage struct
        }
    }
    
    // JUST DO IT
    
}
