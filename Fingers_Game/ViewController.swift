//
//  ViewController.swift
//  Fingers_Game
//
//  Created by Filip on 05.04.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fingersField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func quessButton(_ sender: Any) {
        
         let roll = String(arc4random_uniform(6))
     
            if fingersField.text!.isEmpty {
            
                   resultLabel.text = ("Input fingers holding up")
                
                } else if fingersField.text == roll {
               
                        resultLabel.text = ("You're right !")
                    
                    } else {
                    
                    resultLabel.text = ("Wrong, it was a \(roll) !")
                    
                }

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

