//
//  ClientView.swift
//  ThatClient
//
//  Created by Vladyslav Lytvynenko on 25.07.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import SwiftUI
import ThatModel
import ThatLocator

public struct ClientView: View {
    @ScopedInjected private var service: Service
    
    public init() {
        $service.scope = "MyView"
    }
    
    public var body: some View {
        Text(service.info().description())
            .multilineTextAlignment(.center)
    }
}

struct ClientView_Previews: PreviewProvider {
    static var previews: some View {
        let registry = ServiceRegistry.global
        registry.register(DummyService() as Service)
        return ClientView()
    }
}

class DummyService: Service {
    func info() -> ThatInfo {
        return .init(ID: UUID(),
                     count: 0,
                     text: "Dymmy Info.")
    }
}
