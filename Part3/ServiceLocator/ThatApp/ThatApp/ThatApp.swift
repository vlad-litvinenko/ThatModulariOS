//
//  ThatApp.swift
//  ThatApp
//
//  Written by Vladislav Litvinenko
//

import SwiftUI

@main
struct ThatApp: App {

    init() {
        registerServices()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
