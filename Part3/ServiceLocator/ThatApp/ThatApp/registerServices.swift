//
//  registerServices.swift
//  ThatApp
//
//  Written by Vladislav Litvinenko
//

import Foundation
import ThatClient
import ThatService
import ThatLocator

extension ThatService.Logic: ThatClient.Service {}

func registerServices() {
    let service = ThatService.Logic()
    ServiceRegistry.global.register { service as ThatClient.Service }
}
