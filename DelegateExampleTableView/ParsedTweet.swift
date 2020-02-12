//
//  ParsedTweet.swift
//  DelegateExampleTableView
//
//  Created by MLS Discovery on 1/29/20.
//  Copyright © 2020 TeamAmerica. All rights reserved.
//

import UIKit

class ParsedTweet: NSObject {
    
    var tweetText : String?
    var userName : String?
    var createdAt : String?
    var userAvatarURL : URL?
    
    init(tweetText: String?,
         userName: String?,
         createdAt: String?,
         userAvatarURL: URL?) {
        super.init()
        self.tweetText = tweetText
        self.userName = userName
        self.createdAt = createdAt
        self.userAvatarURL = userAvatarURL
    }
    
    override init() {
        super.init()
    }
}
