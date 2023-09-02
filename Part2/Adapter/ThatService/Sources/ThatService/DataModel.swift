//
//  DataModel.swift
//  ThatService
//
//  Written by Vladislav Litvinenko
//

import Foundation

public struct DataModel {
    public let ID: UUID
    public let count: Int
    public let text: String
    
    public init(ID: UUID, count: Int, text: String) {
        self.ID = ID
        self.count = count
        self.text = text
    }
}
