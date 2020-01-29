//
//  ViewController.swift
//  DelegateExampleTableView
//
//  Created by MLS Discovery on 1/29/20.
//  Copyright © 2020 TeamAmerica. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let myDataSource = TableData()
    let myDelegate = MyDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = myDataSource
        tableView.delegate = myDelegate
        
        // Do any additional setup after loading the view.
        reloadTweets()
    }
    
    func reloadTweets() {
        tableView.reloadData()
    }


}

