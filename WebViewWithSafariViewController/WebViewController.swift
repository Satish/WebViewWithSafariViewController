//
//  WebViewController.swift
//  WebViewWithSafariViewController
//
//  Created by Satish Chauhan on 9/12/17.
//  Copyright © 2017 Satish. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet private weak var webView: UIWebView!

    var urlString: String?

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let urlRequest: URLRequest
        if let urlString = urlString,
            let url = URL(string: urlString) {
            urlRequest = URLRequest(url: url)
        } else {
            urlRequest = URLRequest(url: URL(string: "https://google.com")!)
        }

        webView.loadRequest(urlRequest)
    }

    @IBAction func close(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }

}
