//
//  DataModel.swift
//  ThatModel
//
//  Written by Vladislav Litvinenko
//

import Foundation

public struct DataModel {
    public let ID: UUID
    public let text: String
    
    public init(ID: UUID, text: String) {
        self.ID = ID
        self.text = text
    }
}
