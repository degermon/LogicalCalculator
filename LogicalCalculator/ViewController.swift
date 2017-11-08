//
//  ViewController.swift
//  LogicalCalculator
//
//  Created by Daniel Suskevic on 08/11/2017.
//  Copyright © 2017 Daniel Suskevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var first : Bool? = nil
    var second : Bool? = nil
    var operation : String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    
    @IBAction func clickedTrue(_ sender: UIButton) {
        if first != nil {
            second = true
        } else {
            first = true
        }
        label.text = "True"
    }
    
    @IBAction func clickedFalse(_ sender: UIButton) {
        if first != nil {
            second = false
        } else {
            first = false
        }
        label.text = "False"
        
    }
    
    @IBAction func clickedEqual(_ sender: UIButton) {
        operation = "Equal"
        label.text = "=="
        
    }
    
    @IBAction func clickedNotEqual(_ sender: UIButton) {
        operation = "Not Equal"
        label.text = "!="
        
    }
    
    @IBAction func clickedAnd(_ sender: UIButton) {
        operation = "And"
        label.text = "&"
        
    }
    
    @IBAction func clickedOr(_ sender: UIButton) {
        operation = "Or"
        label.text = "|"
        
    }
    
    @IBAction func clickedClear(_ sender: UIButton) {
        label.text = " "
        first = nil
        second = nil
        operation = nil
        label.alpha = 1
        
    }
    
    @IBAction func clickedResult(_ sender: UIButton) {
        label.alpha = 0.5
        if operation == "Equal" {
            label.text = first == second ? "true" : "false"
        } else if operation == "Not Equal" {
            label.text = first != second ? "true" : "false"
        } else if operation == "And" {
            guard let theFirst = first else {
                return
            }
            guard let theSecond = second else {
                return
            }
            label.text = theFirst && theSecond ? "true" : "false"
        } else if operation == "Or" {
            guard let theFirst = first else {
                return
            }
            guard let theSecond = second else {
                return
            }
            label.text = theFirst || theSecond ? "true" : "false"
        }
        first = nil
        second = nil
        operation = nil
        
    }
    
}

