//
//  Service.swift
//  ThatClient
//
//  Created by Vladyslav Lytvynenko on 19.07.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import Foundation

public protocol Service {
    func info() -> ThatClientInfo
}
