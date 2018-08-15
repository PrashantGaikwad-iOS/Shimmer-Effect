//
//  ViewController.swift
//  Shimmer Effect
//
//  Created by Prashant G on 8/6/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var startStopButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startStopAction(_ sender: Any) {
        
        if startStopButton.titleLabel?.text == "START" {
            startStopButton.setTitle("STOP", for: .normal)
            Shimmer().startShining(label1)
            Shimmer().startShining(view1)
            Shimmer().startShining(textField1)
            Shimmer().startShining(image1)
            Shimmer().startShining(textView1)
        }
        else{
            startStopButton.setTitle("START", for: .normal)
            Shimmer().stopShining(label1)
            Shimmer().stopShining(view1)
            Shimmer().stopShining(textField1)
            Shimmer().stopShining(image1)
            Shimmer().stopShining(textView1)
        }
        
    }
}

