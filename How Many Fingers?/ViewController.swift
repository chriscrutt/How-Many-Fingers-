//
//  ViewController.swift
//  How Many Fingers?
//
//  Created by Christopher Cruttenden on 1/26/17.
//  Copyright © 2017 Cruttenden Corporation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    
    @IBAction func guess(_ sender: Any) {
        
        let fingers = String(arc4random_uniform(6))
        
        if guess.text == fingers {
            
            answer.text = "You got it right!"
            
        } else {
            
            answer.text = "Wrong... it was " + fingers + "...."
            
        }

        
        
    }
    @IBOutlet weak var answer: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

