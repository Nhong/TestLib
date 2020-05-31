//
//  ViewController.swift
//  TestLib
//
//  Created by Kittinun Chobtham on 31/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit
import HMSegmentedControl

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: HMSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }

    private func setupView() {
        segmentControl.sectionTitles = ["MDT", "MDA"]
    }

}

