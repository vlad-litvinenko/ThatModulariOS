//
//  ThatServiceAdapter.swift
//  ThatApp
//
//  Created by Vlad Lytvynenko on 08.08.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import Foundation
import ThatClient
import ThatService

class ThatServiceAdapter: Service {
    private let service: ThatService
    
    init(_ service: ThatService) {
        self.service = service
    }
    
    func info() -> ThatClientInfo {
        return clientInfo(from: service.info())
    }
}

private func clientInfo(from serviceInfo: ThatServiceInfo) -> ThatClientInfo {
    return .init(ID: serviceInfo.ID,
                 count: serviceInfo.count,
                 text: serviceInfo.text)
}
