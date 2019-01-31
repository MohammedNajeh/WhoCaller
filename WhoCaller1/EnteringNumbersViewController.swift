//
//  EnteringNumbersViewController.swift
//  WhoCaller1
//
//  Created by mohamed on 1/31/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class EnteringNumbersViewController: UIViewController {

    @IBOutlet weak var CountryTextField: UITextField!
    @IBOutlet weak var NumberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        CountryTextField.underlined()
        NumberTextField.underlined()
    }
    
}
extension UITextField {
    
        func underlined(){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.white.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
