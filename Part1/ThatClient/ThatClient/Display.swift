//
//  Display.swift
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
        Text(service.sayHello())
    }
}

struct ClientView_Previews: PreviewProvider {
    static var previews: some View {
        Display(DummyService())
    }
}

class DummyService: Service {
    func sayHello() -> String {
        "Hello"
    }
}
