//
//  ClientViewController.swift
//  ThatClient
//
//  Created by Vladyslav Lytvynenko on 19.07.20.
//  Copyright © 2020 Vladyslav Lytvynenko. All rights reserved.
//

import UIKit

public class ClientViewController: UIViewController {
    @IBOutlet private weak var label: UILabel!
    
    private let service: Service
    
    public init?(coder: NSCoder, service: Service) {
        self.service = service
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = service.info()
    }
}
