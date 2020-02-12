//
//  LongestSequenceTest.swift
//  DelegateExampleTableViewTests
//
//  Created by MLS Discovery on 2/4/20.
//  Copyright © 2020 TeamAmerica. All rights reserved.
//

import XCTest

class LongestSequenceTest: XCTestCase {

    func test_thatGivenStringOne_TheFunctinoWillReturnOne() {
        let longestSequence = LongestSequence().longestSequence(of: "1", list: "1")
        let expected = 1
        XCTAssertEqual(longestSequence, expected)
    }
    
    func test_thatGivenAKeyOf1WithAListof1101_TheFunctionWillReutrn2() {
        let ls = LongestSequence().longestSequence(of: "1", list: "1101")
        let expected = 2
        XCTAssertEqual(expected, ls)
    }
}

struct LongestSequence {
    func longestSequence(of key: String, list: String) -> Int {
        var holdAllMyXs = 0
        var holdAllMyTotals = [0]
        list.forEach { (x) in
            if (x == "1") {
                holdAllMyXs  += 1
            } else {
                holdAllMyTotals.append(holdAllMyXs)
                holdAllMyXs = 0
            }
        }
        
        _ = holdAllMyTotals.map { x in
            print("All the great values \(x)")
        }
        return 1
    }
}
