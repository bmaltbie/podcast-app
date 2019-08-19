//
//  RSSFeed.swift
//  PodcastApp
//
//  Created by Benjamin Maltbie on 5/8/19.
//  Copyright © 2019 Benjamin Maltbie. All rights reserved.
//

import FeedKit

extension RSSFeed {
    func toEpisodes() -> [Episode] {
        let imageUrl = iTunes?.iTunesImage?.attributes?.href
        var episodes = [Episode]()
        items?.forEach({ (feedItem) in
            var episode = Episode(feedItem: feedItem)
            
            if episode.imageUrl == nil {
                episode.imageUrl = imageUrl
            }
            
            episodes.append(episode)
        })
        return episodes
    } // toEpisodes
} // RSSFeed
