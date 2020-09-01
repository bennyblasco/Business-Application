
//
//  ServicesViewController.swift
//  Business Application
//
//  Created by Benjamin Inemugha on 17/08/2020.
//  Copyright © 2020 Techeloper. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailDescription: UITextView!
    
    var sentData:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = sentData
        
        if navigationItem.title == "Service 1"{
            detailImage.image = UIImage(named: "Image1")
            detailDescription.text = "PROGRAMMING TUTORIALS"
        }
        if navigationItem.title == "Service 2"{
            detailImage.image = UIImage(named: "Image2")
            detailDescription.text = "APP DEVELOPMENT"
        }
        if navigationItem.title == "Service 3"{
            detailImage.image = UIImage(named: "Image3")
            detailDescription.text = "WEB DEVELOPMENT"
        }
        if navigationItem.title == "Service 4"{
            detailImage.image = UIImage(named: "Image4")
            detailDescription.text = "CONSULTATION"
        }
        if navigationItem.title == "Service 5"{
            detailImage.image = UIImage(named: "Image5")
            detailDescription.text = "ADVERTISING"
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
