//
//  RegistriationViewController.swift
//  WhoCaller1
//
//  Created by mohamed on 1/31/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class RegistriationViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var PassordTextField: UITextField!
    
    @IBOutlet weak var MailField: UITextField!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
         nameTextField.underline()
         PassordTextField.underline()
         MailField.underline()
      
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
extension UITextField {
     
        func underline(){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.white.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
