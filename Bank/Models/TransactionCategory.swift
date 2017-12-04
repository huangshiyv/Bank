//
//  TransactionCategory.swift
//  Bank
//
//  Created by Ayden Panhuyzen on 2017-12-03.
//  Copyright © 2017 Ayden Panhuyzen. All rights reserved.
//

import Foundation

struct TransactionCategory: Codable, Equatable {
    /// The unique identifier of this institution
    let id: String
    /// The name of this institution
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case id = "institution_id"
        case name
    }
    
    static func ==(lhs: TransactionCategory, rhs: TransactionCategory) -> Bool {
        return lhs.id == rhs.id && lhs.name == rhs.name
    }
}
