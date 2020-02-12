//
//  Data.swift
//  DelegateExampleTableView
//
//  Created by MLS Discovery on 1/29/20.
//  Copyright © 2020 TeamAmerica. All rights reserved.
//

import Foundation
import UIKit

// need to sublcass NSObject when conforming to this protocol.
class TableData : NSObject, UITableViewDataSource {
    
    
    var parsedTweets = [
        ParsedTweet(tweetText: "iOS 13 is the new hottness",
                    userName: "@pragprog",
                    createdAt: "2014-08-20 16:44:30 EDT",
                    userAvatarURL: URL( string: "https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png")),
        ParsedTweet(tweetText: "music is a thing",
                    userName: "@fmcauley",
                    createdAt: "2015-06-30 6:36:21 EDT",
                    userAvatarURL: URL(string: "https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png")),
        
        ParsedTweet(tweetText: "gas is somthing that we all have",
                    userName: "@egg",
                    createdAt: "2016-10-14 21:42:04 EDT",
                    userAvatarURL: URL(string: "https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png"))
        
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parsedTweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        cell.avatarImageView.image = UIImage(data:Data(contentsOf: parseTweet.userAvatarURL!))
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTweetCell") as! ParsedTweetCell
        let parseTweet = parsedTweets[indexPath.row]
        
        do {
           let imageData =  try Data(contentsOf: parseTweet.userAvatarURL!)
                cell.userNameLabel.text = parseTweet.userName
                cell.tweetTextLabel.text = parseTweet.tweetText
                cell.createdAtLabel.text = parseTweet.createdAt
                cell.imageView?.image = UIImage(data: imageData)
                
        } catch  {
            print(error)
        }
        
        return cell
    }
}
