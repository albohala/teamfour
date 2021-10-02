//
//  ViewController.swift
//  Assing2ColdCore
//
//  Created by administrator on 01/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var namesLabel: UILabel!
    @IBOutlet weak var numLabel: UILabel!
    
    let namesArr = ["Wael", "Abdullah", "Al-Hanouf", "Arwa", "Safaa"]
    
    @IBAction func coldCallButtonPressed(_ sender: UIButton) {
        let pointer = Int.random(in: 0..<5)
        namesLabel.text = namesArr [pointer]
        
        let num = Int.random(in: 0...5)
        
        if num == 1 || num == 2 {
            numLabel.textColor = UIColor.red
            numLabel.text = "\(num)"
        }
        
        if num == 3 || num == 4 {
            numLabel.textColor = UIColor.orange
            numLabel.text = "\(num)"
        }
        
        if num == 5 {
            numLabel.textColor = UIColor.green
            numLabel.text = "\(num)"
        }
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view.
    }


}

