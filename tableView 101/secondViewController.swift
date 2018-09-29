//
//  secondViewController.swift
//  tableView 101
//
//  Created by Behnam Ghasemi on 18.09.2018.
//  Copyright © 2018 Behnam Ghasemi. All rights reserved.
//

import UIKit
import Firebase

class secondViewController: UIViewController {
    
    var ref:DatabaseReference?
    
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var registrationFinish: UILabel!
    @IBOutlet weak var telNumberLable: UITextField!
    @IBOutlet weak var nameLable: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        registrationFinish.isHidden = true
        self.title = "Home"

//        FirebaseApp.configure()
        ref = Database.database().reference()
        
    }

    @IBAction func ersalButton(_ sender: Any) {
        
        
        if telNumberLable.text != nil {
//            registrationFinish.isHidden=false
            registrationFinish.text = "اطلاعات شما با موفقیت ثبت شد"
            
    ref?.child("users").child("customer").childByAutoId().child("phoneNumber").setValue(telNumberLable.text)
            ref?.child("users").child("customer").childByAutoId().child("fullName").setValue(nameLable.text)
            
            telNumberLable.isHidden=true
            nameLable.isHidden=true

        } else {
//            registrationFinish.isHidden=false
            registrationFinish.text = "lotfan box ra por kon"

        }
        
}
}

extension ViewController : UITextViewDelegate {
    
    
}
