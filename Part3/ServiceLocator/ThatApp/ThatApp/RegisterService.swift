//
//  RegisterServices.swift
//  ThatApp
//
//  Created by Vlad Lytvynenko on 22.08.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import Foundation
import ThatLocator
import ThatClient
import ThatService

extension ThatService: Service {}

func registerService() {
    let registry = ServiceRegistry.global
    registry.register(ThatService() as Service)
}
