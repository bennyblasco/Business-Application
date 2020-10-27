//
//  SocialViewController.swift
//  Business Application
//
//  Created by Benjamin Inemugha on 14/10/2020.
//  Copyright © 2020 Techeloper. All rights reserved.
//

import UIKit
import WebKit

class SocialViewController: UIViewController, WKNavigationDelegate {

    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
    if let host = navigationAction.request.url?.host {
        if host == "www.apple.com" {
            decisionHandler(.allow)
            return
        }
    }
    }
 */


}
