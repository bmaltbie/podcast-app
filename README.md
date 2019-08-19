# podcast-app
iOS app to download and listen to podcasts. Build for Castaway start-up, app end goal is to be a social podcast experience. In the app, you're able to search the iTunes API or input RSS feeds for episodes, add episodes, play them or download them, and then comment on the episodes and share them with friends. 

## Currently implements:
- [X] Alamofire, Cocoapods, iTunes Search API
- [X] Decodable podcasts and URLEncoding requests
- [X] Cell Designs with XIBs and Interface Builder
- [X] Loading and Caching Images with SDWebImage
- [X] Parsing RSS XML Feed with FEedKit
- [X] Episode Cell Details and Design with Interface Builder


## Search UI
![image1](https://github.com/bmaltbie/podcast-app/blob/master/images/search.png)

On this screen, you're able to search for a podcast and the search results change in real time, showing the podcast album image as well as information about the podcast. 


## Selected Podcast UI
![image2](https://github.com/bmaltbie/podcast-app/blob/master/images/specific_podcast.png)

On this screen, you're able to see details about what episodes the podcast has and select which ones you'd like to view. It shows the podcast art, date, title, and a brief description of the episode.


## Play Podcast UI
![image3](https://github.com/bmaltbie/podcast-app/blob/master/images/play.png)

The UI when playing a podast, still unfinished but the groundwork is there.


## TO DO: 
- [ ] Finish 'Play podcast' UI 
- [ ] Floating Player View
- [ ] Draggable Player 
- [ ] Background Audio Playback and Lock Sceen Info
- [ ] Favorites
- [ ] Downloads - Offline playback
