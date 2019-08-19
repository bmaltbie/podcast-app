//
//  PlayerDetailsView.swift
//  PodcastApp
//
//  Created by Benjamin Maltbie on 5/8/19.
//  Copyright © 2019 Benjamin Maltbie. All rights reserved.
//

import UIKit

class PlayerDetailsView: UIView {
    @IBOutlet weak var episodeImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel! {
        didSet {
            titleLabel.numberOfLines = 2
        }
    }
    @IBOutlet weak var authorLabel: UILabel!
    
    var episode: Episode! {
        didSet {
            titleLabel.text = episode.title
            authorLabel.text = episode.author
            guard let url = URL(string: episode.imageUrl ?? "") else { return }
            episodeImageView.sd_setImage(with: url)
        }
    } // episode
    
    @IBOutlet weak var playPauseButton: UIButton!
    
    @IBAction func handleDismiss(_ sender: Any) {
        self.removeFromSuperview()
    }
} // PlayerDetailsView
