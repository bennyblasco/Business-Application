//
//  ViewController.swift
//  Business Application
//
//  Created by Benjamin Inemugha on 01/08/2020.
//  Copyright © 2020 Techeloper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var servicesBtn: UIButton!
    @IBOutlet weak var portfolioBtn: UIButton!
    @IBOutlet weak var aboutUsBtn: UIButton!
    @IBOutlet weak var contactUsBtn: UIButton!
    @IBOutlet weak var socialLinksBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func serviceBtnWasPressed(_ sender: Any) {
        print("Service Pressed")
    }
    
    @IBAction func portfolioBtnWasPressed(_ sender: Any) {
        print("Portfolio Pressed")
    }
    @IBAction func aboutUsBtnWasPressed(_ sender: Any) {
        print("AboutUS Pressed")
    }
    @IBAction func contactUsBtnWasPressed(_ sender: Any) {
        print("ContactUs Pressed")
    }
    @IBAction func socialLinksBtnWasPressed(_ sender: Any) {
        print("SocialLinks Pressed")
    }
    
    
    
    
}

