//
//  ViewController.swift
//  applepickinggame
//
//  Created by Enoch Ko on 4/11/17.
//  Copyright © 2017 asu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.monkey.image = UIImage(named: "appleMonkey.jpeg")
        self.appleImage.image = UIImage(named: "apple.jpg")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

