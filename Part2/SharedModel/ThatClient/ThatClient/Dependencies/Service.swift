//
//  Service.swift
//  ThatClient
//
//  Written by Vladislav Litvinenko
//

import Foundation
import ThatModel

public protocol Service {
    func data() -> DataModel
}
