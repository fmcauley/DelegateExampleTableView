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
                    userAvatarURL:NSURL( string: "https://media.idownloadblog.com/wp-content/uploads/2017/03/Twitter-new-2017-avatar-001.png")),
        ParsedTweet(tweetText: "music is a thing",
                    userName: "@fmcauley",
                    createdAt: "2015-06-30 6:36:21 EDT",
                    userAvatarURL:NSURL(string: "https://media.idownloadblog.com/wp-content/uploads/2017/03/Twitter-new-2017-avatar-001.png")),
        
        ParsedTweet(tweetText: "gas is somthing that we all have",
                    userName: "@egg",
                    createdAt: "2016-10-14 21:42:04 EDT",
                    userAvatarURL: NSURL(string: "https://media.idownloadblog.com/wp-content/uploads/2017/03/Twitter-new-2017-avatar-001.png"))
        
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parsedTweets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseId")
        let parsedTweet = parsedTweets[indexPath.row]
        cell?.textLabel?.text = parsedTweet.tweetText
        cell?.detailTextLabel?.text = parsedTweet.tweetText
        return cell!
    }
}
