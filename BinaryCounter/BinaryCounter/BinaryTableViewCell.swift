//
//  BinaryTableViewCell.swift
//  BinaryCounter
//
//  Created by administrator on 06/10/2021.
//

import UIKit


protocol BinaryTableViewCellDelegate: class {
    func valueChangedBy(value: Int)
}


class BinaryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    weak var delegate: BinaryTableViewCellDelegate?
    
    @IBAction func valueButtonPressed(_ sender: UIButton) {
        
        var value = Int(valueLabel!.text!)
        
        if sender.titleLabel!.text == "-" {
            value = -value!
        }
        
        delegate?.valueChangedBy(value: value!)
    }
    

}
