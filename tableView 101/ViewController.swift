//
//  ViewController.swift
//  tableView 101
//
//  Created by Behnam Ghasemi on 17.09.2018.
//  Copyright © 2018 Behnam Ghasemi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let amlakItems = [" شهر: استانبول \n تعداد اتاق: ۲ اتاق + سالن و آشپزخانه \n وضعیت: اجاره ای \n قیمت: ۲۵۰۰ لیر"," شهر: استانبول \n تعداد اتاق: ۲ اتاق + سالن و آشپزخانه \n وضعیت: اجاره ای \n قیمت: ۲۵۰۰ لیر"," شهر: استانبول \n تعداد اتاق: ۲ اتاق + سالن و آشپزخانه \n وضعیت: اجاره ای \n قیمت: ۲۵۰۰ لیر"," شهر: استانبول \n تعداد اتاق: ۲ اتاق + سالن و آشپزخانه \n وضعیت: اجاره ای \n قیمت: ۲۵۰۰ لیر"," شهر: استانبول \n تعداد اتاق: ۲ اتاق + سالن و آشپزخانه \n وضعیت: اجاره ای \n قیمت: ۲۵۰۰ لیر"," شهر: استانبول \n تعداد اتاق: ۲ اتاق + سالن و آشپزخانه \n وضعیت: اجاره ای \n قیمت: ۲۵۰۰ لیر"]
    
    let amlakImage = ["villaone.jpg","villatwo.jpg", "villaone.jpg", "villaone.jpg","villatwo.jpg", "villaone.jpg"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return amlakItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! viewControllerTableViewCell
        
        cell.myImage.image = UIImage(named: (amlakImage[indexPath.row]+".jpg"))
        cell.myLable.text = amlakItems[indexPath.row]
        
        return (cell)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title =  " لیست"

    }


}

