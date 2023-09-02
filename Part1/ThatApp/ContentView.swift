//
//  ContentView.swift
//  ThatApp
//
//  Written by Vladislav Litvinenko
//

import SwiftUI
import ThatClient
import ThatService

extension ThatService.Logic: ThatClient.Service {}

struct ContentView: View {
    var body: some View {
        Display(Logic())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
