//
//  ViewController.swift
//  ThatApp
//
//  Created by Vladyslav Lytvynenko on 19.07.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import UIKit
import SwiftUI
import ThatClient
import ThatService

class ViewController: UIViewController {

    @IBAction private func storyboardTapped() {
        let bundle = Bundle(for: ClientViewController.self)
        let storyboard = UIStoryboard(name: "Client", bundle: bundle)
        guard let controller = storyboard.instantiateInitialViewController(creator: {
            
            let adapter = ThatServiceAdapter(ThatService())
            return ClientViewController(coder: $0, service: adapter)
            
        }) else {
            fatalError("Expected ClientViewController")
        }
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction private func swiftUITapped() {
        
        let adapter = ThatServiceAdapter(ThatService())
        let controller = UIHostingController(rootView: ClientView(service: adapter))
        
        navigationController?.pushViewController(controller, animated: true)
    }
}
