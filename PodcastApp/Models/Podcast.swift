//
//  Podcast.swift
//  PodcastApp
//
//  Created by Benjamin Maltbie on 5/7/19.
//  Copyright © 2019 Benjamin Maltbie. All rights reserved.
//

import Foundation

struct Podcast: Decodable {
    var trackName: String?
    var artistName: String?
    var artworkUrl600: String?
    var trackCount: Int?
    var feedUrl: String?
} // struct
