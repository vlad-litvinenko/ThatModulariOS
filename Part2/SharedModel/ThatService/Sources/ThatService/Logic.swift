//
//  Logic.swift
//  ThatService
//
//  Written by Vladislav Litvinenko
//

import Foundation
import ThatModel

public class Logic {
    public init() {}
    
    public func data() -> DataModel {
        .init(ID: UUID(),
              text: "Data from ThatService.")
    }
}
