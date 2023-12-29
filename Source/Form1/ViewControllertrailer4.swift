//
//  ViewControllertrailer4.swift
//  Form1
//
//  Created by Student on 01/11/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit
import  WebKit

class ViewControllertrailer4: UIViewController {

    var webView = WKWebView()
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)
        let myURL = URL(string: "https://www.youtube.com/watch?v=1Q8fG0TtVAY")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    

}
}
