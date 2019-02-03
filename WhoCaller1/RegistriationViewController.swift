//
//  RegistriationViewController.swift
//  WhoCaller1
//
//  Created by mohamed on 1/31/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class RegistriationViewController: UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{

    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var PassordTextField: UITextField!
    
    @IBOutlet weak var MailField: UITextField!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
         nameTextField.underline()
         PassordTextField.underline()
         MailField.underline()
         self.profilePic.layer.cornerRadius = self.profilePic.frame.size.width / 2;
         self.profilePic.clipsToBounds = true

         //self.profilePic.layer.cornerRadius=10.0
      
        
        // Do any additional setup after loading the view.
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let selectedImage=info[UIImagePickerControllerOriginalImage] as! UIImage
        profilePic.image = selectedImage
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func ImportImage(_ sender: UITapGestureRecognizer) {
        let imagePickeController = UIImagePickerController()
        imagePickeController.sourceType = .photoLibrary
        imagePickeController.delegate=self
        present(imagePickeController, animated: true, completion: nil)
        
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
