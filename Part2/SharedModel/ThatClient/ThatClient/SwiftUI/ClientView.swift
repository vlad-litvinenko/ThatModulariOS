//
//  ClientView.swift
//  ThatClient
//
//  Created by Vladyslav Lytvynenko on 25.07.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import SwiftUI
import ThatModel

public struct ClientView: View {
    let service: Service
    
    public init(service: Service) {
        self.service = service
    }
    
    public var body: some View {
        Text(service.info().description())
            .multilineTextAlignment(.center)
    }
}

struct ClientView_Previews: PreviewProvider {
    static var previews: some View {
        ClientView(service: DummyService())
    }
}

class DummyService: Service {
    func info() -> ThatInfo {
        return .init(ID: UUID(),
                     count: 0,
                     text: "Dymmy Info.")
    }
}
