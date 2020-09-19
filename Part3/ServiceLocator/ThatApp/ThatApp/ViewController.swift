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
        guard let controller = storyboard.instantiateInitialViewController() else {
            fatalError("Expected UIViewController")
        }
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction private func swiftUITapped() {
        let controller = UIHostingController(rootView: ClientView(itemID: UUID().uuidString))
        navigationController?.pushViewController(controller, animated: true)
    }
}
