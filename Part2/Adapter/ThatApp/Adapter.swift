//
//  Adapter.swift
//  ThatApp
//
//  Written by Vladislav Litvinenko
//

import Foundation
import ThatClient
import ThatService

class Adapter: ThatClient.Service {
    private let logic: ThatService.Logic

    init(_ logic: ThatService.Logic) {
        self.logic = logic
    }

    func data() -> ThatClient.DataModel {
        clientData(from: logic.data())
    }
}

private func clientData(from serviceData: ThatService.DataModel) -> ThatClient.DataModel {
    .init(ID: serviceData.ID,
          count: serviceData.count,
          text: serviceData.text)
}
