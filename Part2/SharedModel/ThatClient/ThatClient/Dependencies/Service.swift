//
//  Service.swift
//  ThatClient
//
//  Created by Vladyslav Lytvynenko on 19.07.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import Foundation
import ThatModel

public protocol Service {
    func info() -> ThatInfo
}

extension ThatInfo {
    func description() -> String {
        return [ID.uuidString,
                String(describing: count),
                text]
            .joined(separator: "\n")
    }
}
