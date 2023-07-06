//
//  ViewController.swift
//  ios-webView
//
//  Created by Lautaro Echeverria on 05/07/2023.
//

import UIKit
import WebKit
import mParticle_Apple_SDK

class ViewController: UIViewController, WKUIDelegate {
    
    var webView = WKWebView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)
        MParticle.sharedInstance().initializeWKWebView(webView,bridgeName: "testWebViewLautaro")
        
        let myURL = URL(string: "https://webview-sample-mp.netlify.app/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }


}

