//
//  ClientViewController.swift
//  ThatClient
//
//  Created by Vladyslav Lytvynenko on 19.07.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import UIKit
import ThatLocator

public class ClientViewController: UIViewController {
    @Injected private var service: Service
    
    @IBOutlet private weak var label: UILabel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = service.info().description()
    }
}
