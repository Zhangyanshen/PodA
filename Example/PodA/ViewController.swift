//
//  ViewController.swift
//  PodA
//
//  Created by 张延深 on 11/19/2021.
//  Copyright (c) 2021 张延深. All rights reserved.
//

import UIKit
import PodA

class ViewController: UIViewController {
    
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        YSTool.test()
        CoreFile.coreFunc()
        MapKitFile.mapkitFunc()
        let path = Bundle.main.path(forResource: "PodA", ofType: "bundle")
        let bundle = Bundle(path: path ?? "")
        let imgName = "group4@\(Int(UIScreen.main.scale))x.png"
        imgView.image = UIImage.init(named: imgName, in: bundle, compatibleWith: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

