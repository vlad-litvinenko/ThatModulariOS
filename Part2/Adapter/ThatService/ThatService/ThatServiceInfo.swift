//
//  ThatServiceInfo.swift
//  ThatService
//
//  Created by Vlad Lytvynenko on 08.08.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import Foundation

public struct ThatServiceInfo {
    public let ID: UUID
    public let count: Int
    public let text: String
    
    public init(ID: UUID, count: Int, text: String) {
        self.ID = ID
        self.count = count
        self.text = text
    }
}
