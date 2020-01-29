//
//  MyDelegate.swift
//  DelegateExampleTableView
//
//  Created by MLS Discovery on 1/29/20.
//  Copyright © 2020 TeamAmerica. All rights reserved.
//

import Foundation
import UIKit

class MyDelegate: NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected indexPath \(indexPath)")
    }
    
}
