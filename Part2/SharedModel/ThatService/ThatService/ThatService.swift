//
//  ThatService.swift
//  ThatService
//
//  Created by Vladyslav Lytvynenko on 19.07.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import Foundation
import ThatModel

public class ThatService {
    public init() {}
    
    public func info() -> ThatInfo {
        return .init(ID: UUID(),
                     count: 1,
                     text: "Info from ThatService.")
    }
}
