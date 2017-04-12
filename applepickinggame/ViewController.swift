//
//  ViewController.swift
//  applepickinggame
//
//  Created by Enoch Ko on 4/11/17.
//  Copyright © 2017 asu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monkey: UIImageView!
    @IBOutlet weak var appleImage1: UIImageView!
    @IBOutlet weak var appleImage2: UIImageView!
    @IBOutlet weak var appleImage3: UIImageView!
    @IBOutlet weak var appleImage4: UIImageView!
    @IBOutlet weak var timerLabel: UILabel!
    var counter = 0
    var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.monkey.image = UIImage(named: "appleMonkey.jpeg")
        self.appleImage1.image = UIImage(named: "apple.jpg")
        self.appleImage2.image = UIImage(named: "apple.jpg")
        self.appleImage3.image = UIImage(named: "apple.jpg")
        self.appleImage4.image = UIImage(named: "apple.jpg")
        timer = Timer()
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.count), userInfo: nil, repeats: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func count()
    {
        counter = counter + 1
        timerLabel.text  = String( counter)
    }

    @IBAction func up(_ sender: Any) {
        var frame  = self.monkey.frame
        frame.origin.y -= 10
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: appleImage1))
        {
            self.appleImage1.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage2))
        {
            self.appleImage2.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage3))
        {
            self.appleImage3.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage4))
        {
            self.appleImage4.isHidden = true
        }
        
        

    }
    @IBAction func down(_ sender: Any) {
        var frame  = self.monkey.frame
        frame.origin.y += 10
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: appleImage1))
        {
            self.appleImage1.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage2))
        {
            self.appleImage2.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage3))
        {
            self.appleImage3.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage4))
        {
            self.appleImage4.isHidden = true
        }

    }
    @IBAction func right(_ sender: Any) {
        var frame  = self.monkey.frame
        frame.origin.x += 10
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: appleImage1))
        {
            self.appleImage1.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage2))
        {
            self.appleImage2.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage3))
        {
            self.appleImage3.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage4))
        {
            self.appleImage4.isHidden = true
        }

    }
    @IBAction func left(_ sender: Any) {
        var frame  = self.monkey.frame
        frame.origin.x -= 10
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: appleImage1))
        {
            self.appleImage1.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage2))
        {
            self.appleImage2.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage3))
        {
            self.appleImage3.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: appleImage4))
        {
            self.appleImage4.isHidden = true
        }

    }
    
    func viewIntersectsView(_ first_View: UIView, second_View:UIView) -> Bool
    {
        if (self.appleImage1.isHidden == true && self.appleImage2.isHidden == true && self.appleImage3.isHidden == true && self.appleImage4.isHidden == true){
            timer?.invalidate()
            self.timerLabel.text = "You won! It took you \(self.timerLabel.text)"
        }
        return first_View.frame.intersects(second_View.frame)
    }
    


}

