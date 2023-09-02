//
//  Display.swift
//  ThatClient
//
//  Written by Vladislav Litvinenko
//

import SwiftUI
import ThatLocator

public struct Display: View {
    @Injected var service: Service
    
    public init() {}
    
    public var body: some View {
        Text(service.sayHello())
    }
}

struct ClientView_Previews: PreviewProvider {
    static var previews: some View {
        ServiceRegistry.global.register { DummyService() as Service }
        return Display()
    }
}

class DummyService: Service {
    func sayHello() -> String {
        "Hello"
    }
}
