//
//  EmailViewController.swift
//  Business Application
//
//  Created by Benjamin Inemugha on 07/09/2020.
//  Copyright © 2020 Techeloper. All rights reserved.
//

import UIKit
import MessageUI

class EmailViewController: UIViewController, UITextViewDelegate, MFMailComposeViewControllerDelegate{
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var messageField: UITextView!
    @IBOutlet weak var sendEmailBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sendEmailBtn.layer.cornerRadius = 10
        self.navigationItem.title = "Email Us"
    }
    @IBAction func dismissKeyboard(_ sender: Any) {
        self.resignFirstResponder()  
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n"{
            textView.resignFirstResponder()
            return false
        }
        return true
    }
    
    @IBAction func sendEmailWasPressed(_ sender: Any) {
        let composeVC = MFMailComposeViewController()
        composeVC.mailComposeDelegate = self
         
        // Configure the fields of the interface.
        composeVC.setToRecipients(["bennyblasco@gmail.com"])
        composeVC.setSubject("Hello to Techelopers")
        composeVC.setMessageBody("""
                                    Name: \(nameField.text!)
                                    Email: \(emailField.text!)
                                    Body: \(messageField.text!)
                                    """, isHTML: false)
         
        // Present the view controller modally.
        self.present(composeVC, animated: true, completion: nil)
    }
    
    func mailComposeController(controller: MFMailComposeViewController,
                               didFinishWithResult result: MFMailComposeResult, error: NSError?) {
        // Check the result or perform other tasks.
        
        // Dismiss the mail compose view controller.
        controller.dismiss(animated: true, completion: nil)
        //self.resignFirstResponder()
    }
}
