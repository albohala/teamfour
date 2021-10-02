//
//  ViewController.swift
//  Tipster
//
//  Created by administrator on 02/10/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    var numbersOnScreen: Double = 0
    

    @IBOutlet weak var showPrice: UILabel!
    
    
    @IBOutlet weak var showFirstPercent: UILabel!
    
    @IBOutlet weak var showSecondPercent: UILabel!
    
    @IBOutlet weak var showThirdPercent: UILabel!
    
    
    
    @IBOutlet weak var showFirstTip: UILabel!
    
    @IBOutlet weak var showSecondTip: UILabel!
    
    @IBOutlet weak var showThirdTip: UILabel!
    
    
    
    @IBOutlet weak var showFirstTotal: UILabel!
    
    @IBOutlet weak var showSecondTotal: UILabel!
    
    @IBOutlet weak var showThirdTotal: UILabel!
    
    
    
    @IBOutlet weak var groupNumber: UILabel!
    
    
    // Numbers buttons
    
    @IBAction func numbers(_ sender: UIButton) {
        showPrice.text = showPrice.text! + String(sender.tag-1)
        
        numbersOnScreen = Double(showPrice.text!)!
    }
    
    @IBAction func pressedClear(_ sender: UIButton) {
        showPrice.text = ""
        }
    
    
    
    
        
    
    // Tips slider
    
    @IBAction func tipsSlider(_ sender: UISlider) {
        
        let value = sender.value
        
        showFirstPercent.text = "\(Int(value))%"
        showSecondPercent.text = "\(Int(value)+5)%"
        showThirdPercent.text = "\(Int(value)+10)%"
        
        
        // Calculate tips
        showFirstTip.text = "\(Double(value)*(numbersOnScreen/100))"
        showSecondTip.text = "\(Double(value+5)*(numbersOnScreen/100))"
        showThirdTip.text = "\(Double(value+10)*(numbersOnScreen/100))"
        
        
        // Calculate Total
        showFirstTotal.text = "\(Double(value)*(numbersOnScreen/100) + numbersOnScreen)"
        showSecondTotal.text = "\(Double(value+5)*(numbersOnScreen/100) + numbersOnScreen)"
        showThirdTotal.text = "\(Double(value+10)*(numbersOnScreen/100) + numbersOnScreen)"

    }
    
    
    
    
    // Groups slider
    
    
    @IBAction func groupSlider(_ sender: UISlider) {
        
        let gValue = sender.value
        
        groupNumber.text = "Group \(Int(gValue))"
        
        
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

