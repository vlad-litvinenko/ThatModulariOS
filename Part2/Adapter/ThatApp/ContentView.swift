//
//  ContentView.swift
//  ThatApp
//
//  Written by Vladislav Litvinenko
//

import SwiftUI
import ThatClient
import ThatService

struct ContentView: View {
    var body: some View {
        Display(Adapter(Logic()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
