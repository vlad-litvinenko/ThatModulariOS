//
//  ClientView.swift
//  ThatClient
//
//  Created by Vladyslav Lytvynenko on 25.07.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import SwiftUI

public struct ClientView: View {
    let service: Service
    
    public init(service: Service) {
        self.service = service
    }
    
    public var body: some View {
        Text(service.info())
    }
}

struct ClientView_Previews: PreviewProvider {
    static var previews: some View {
        ClientView(service: DummyService())
    }
}

class DummyService: Service {
    func info() -> String {
        return "Dymmy Info."
    }
}
