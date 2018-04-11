//
//  ViewController.swift
//  Pure Swift DI
//
//  Created by Basem Emara on 2018-04-11.
//

import UIKit
import MyCore

class ViewController: UIViewController, HasDependencies {

    private lazy var authenticationWorker: AuthenticationWorkerType = dependencies.resolveWorker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authenticationWorker.login(with: "whatever") {
            //completed
        }
    }
}

