//
//  ViewControllertrailer8.swift
//  Form1
//
//  Created by Student on 01/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
import WebKit
class ViewControllertrailer8: UIViewController {

    var webView = WKWebView()
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)
        let myURL = URL(string: "https://www.youtube.com/watch?v=sfM7_JLk-84")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }

}
