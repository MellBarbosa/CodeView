//
//  MainViewController.swift
//  CodeView
//
//  Created by Mell Barbosa on 03/03/20.
//  Copyright © 2020 Mell Barbosa. All rights reserved.
//

import Foundation
import UIKit


final class MainViewController: UIViewController {
    
    public let codeView = CodeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(codeView)
        codeView.edgesToSuperview()
    }
}
