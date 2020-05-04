//
//  ViewController.swift
//  MapTest
//
//  Created by 조윤영 on 05/05/2020.
//  Copyright © 2020 조윤영. All rights reserved.
//

import UIKit
import NMapsMap

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nmapFView = NMFMapView(frame: view.frame)
        view.addSubview(nmapFView)
    }


}

