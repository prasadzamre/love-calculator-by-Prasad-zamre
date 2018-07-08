//
//  ViewController.swift
//  Love Calculaor
//
//  Created by Prasad Zamre on 08/07/18.
//  Copyright © 2018 Prasad Zamre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hisInput: UITextField!
    @IBOutlet weak var herInput: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var nextLine: UILabel!
    
    override func viewDidLoad() {
        hisInput.delegate = self
        herInput.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resultTapped(_ sender: Any) {
        
        func loveCalculator(yourName : String, theirName : String) {
            let loveScore = Int(arc4random_uniform(101))
            if loveScore > 80 {
              
                resultLabel.text = "your love score is \(loveScore)."
                nextLine.text = "You are compatiple with each other"
            }
            else if loveScore > 40 && loveScore <= 80{
               resultLabel.text =  "Your love score is \(loveScore)."
                 nextLine.text = "you go together like coke and mentos !"
            }
            else{
                resultLabel.text = "Your love score is \(loveScore)."
                 nextLine.text = "No love possible,you'll be forever alone !"
            }
            
        }
        
        print(loveCalculator(yourName: "\(hisInput)", theirName: "\(herInput)"))
        
    }

        
    }


extension ViewController : UITextFieldDelegate{
    
}
