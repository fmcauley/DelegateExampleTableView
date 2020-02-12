//
//  ViewController.swift
//  DelegateExampleTableView
//
//  Created by MLS Discovery on 1/29/20.
//  Copyright © 2020 TeamAmerica. All rights reserved.
//

import UIKit
import Social
import Accounts

class ViewController: UITableViewController {
    
    let myDataSource = TableData()
    let myDelegate = MyDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = myDataSource
        tableView.delegate = myDelegate
        
        // Do any additional setup after loading the view.
        reloadTweets()
        
        let refresher = UIRefreshControl()
        
        refresher.addTarget(self, action: #selector(handleRefresh(sender:)), for: .valueChanged)
        
        refreshControl = refresher
    }
    
    @IBAction func handleRefresh(sender: AnyObject?) {
        
        myDataSource.parsedTweets.append(
            ParsedTweet(tweetText: "New Row", userName: "@refresh", createdAt: Date().description, userAvatarURL: myDataSource.defaultAvatarURL))
            reloadTweets()
            refreshControl?.endRefreshing()
    }
    
    func reloadTweets() {
        tableView.reloadData()
        
        let accountStore = ACAccountStore()
        let twitterAccountType = accountStore.accountType(withAccountTypeIdentifier: ACAccountTypeIdentifierTwitter)
    }


}

