//
//  Logic.swift
//  ThatService
//
//  Written by Vladislav Litvinenko
//

import Foundation

public class Logic {
    public init() {}
    
    public func data() -> DataModel {
        return .init(ID: UUID(),
                     count: 1,
                     text: "Data from ThatService.")
    }
}
