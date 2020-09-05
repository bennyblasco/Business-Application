//
//  AboutUsViewController.swift
//  Business Application
//
//  Created by Benjamin Inemugha on 03/09/2020.
//  Copyright © 2020 Techeloper. All rights reserved.
//

import UIKit

class AboutUsViewController: UIViewController {

    @IBOutlet weak var contactUsButton: UIButton!
    @IBOutlet weak var techelopersImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactUsButton.layer.cornerRadius = 10
        techelopersImg.layer.cornerRadius = 20


        // Do any additional setup after loading the view.
    }
    
    @IBAction func contactUsButtonWasPressed(_ sender: Any) {
        self.tabBarController?.selectedIndex = 3
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
