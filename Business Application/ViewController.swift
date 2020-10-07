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
    @IBOutlet weak var techelopersImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        servicesBtn.layer.cornerRadius = 10
        //portfolioBtn.layer.cornerRadius = 10
        aboutUsBtn.layer.cornerRadius = 10
        contactUsBtn.layer.cornerRadius = 10
        socialLinksBtn.layer.cornerRadius = 10
        techelopersImg.layer.cornerRadius = 20
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

    }

    @IBAction func serviceBtnWasPressed(_ sender: Any) {
        self.tabBarController?.selectedIndex = 3
    }
    
    //@IBAction func portfolioBtnWasPressed(_ sender: Any) {
      //  self.tabBarController?.selectedIndex = 2
    //}
    @IBAction func aboutUsBtnWasPressed(_ sender: Any) {
        self.tabBarController?.selectedIndex = 1
    }
    @IBAction func contactUsBtnWasPressed(_ sender: Any) {
        self.tabBarController?.selectedIndex = 2
    }
    @IBAction func socialLinksBtnWasPressed(_ sender: Any) {
        
    }
    
    
    
    
}

