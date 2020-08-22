//
//  ThatInfo.swift
//  ThatModel
//
//  Created by Vlad Lytvynenko on 09.08.20.
//  Copyright © 2020 Vlad Lytvynenko. All rights reserved.
//

import Foundation

public struct ThatInfo {
    public let ID: UUID
    public let count: Int
    public let text: String
    
    public init(ID: UUID, count: Int, text: String) {
        self.ID = ID
        self.count = count
        self.text = text
    }
}
