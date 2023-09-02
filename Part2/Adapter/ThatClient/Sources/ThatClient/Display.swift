//
//  ClientView.swift
//  ThatClient
//
//  Written by Vladislav Litvinenko
//

import SwiftUI

public struct Display: View {
    let service: Service
    
    public init(_ service: Service) {
        self.service = service
    }
    
    public var body: some View {
        Text(service.data().description())
            .multilineTextAlignment(.center)
    }
}

struct ClientView_Previews: PreviewProvider {
    static var previews: some View {
        Display(DummyService())
    }
}

class DummyService: Service {
    func data() -> DataModel {
        .init(ID: UUID(),
              count: 0,
              text: "Dymmy data")
    }
}
