//
//  APIService.swift
//  PodcastApp
//
//  Created by Benjamin Maltbie on 5/8/19.
//  Copyright © 2019 Benjamin Maltbie. All rights reserved.
//

import Foundation
import Alamofire
import FeedKit

let baseiTunesSearchURL = "https://itunes.apple.com/search"

class APIService {
    // singleton
    static let shared = APIService()
    
    func fetchEpisodes(feedUrl: String, completionHandler: @escaping ([Episode]) -> ()) {
        guard let url = URL(string: feedUrl.toSecureHTTPS()) else { return }
        let parser = FeedParser(URL: url)
        
        // associative enumeration values
        parser?.parseAsync(result: { (result) in
            if let err = result.error {
                print("Failed to parse XML feed:", err)
            }
            
            guard let feed = result.rssFeed else { return }
            let episodes = feed.toEpisodes()
            completionHandler(episodes)
        })
    } // fetchEpisodes
    
    func fetchPodcasts(searchText: String, completionHandler: @escaping ([Podcast]) -> ()) {
        let parameters = ["term": searchText, "media": "podcast"]
        
        Alamofire.request(baseiTunesSearchURL, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).response { (dataResponse) in
            if let err = dataResponse.error {
                print("Failed to contact to iTunes", err)
                return
            } // if
            
            guard let data = dataResponse.data else { return }
            do {
                let searchResult = try JSONDecoder().decode(SearchResults.self, from: data)
//                self.podcasts = searchResult.results
//                self.tableView.reloadData()
                completionHandler(searchResult.results)
            } catch let decodeErr {
                print("Failed to decode:", decodeErr)
            } // catch
        } // Alamofire request
    } // fetchPodcasts
} // APIService


struct SearchResults: Decodable {
    let resultCount: Int
    let results: [Podcast]
} // searchResults
