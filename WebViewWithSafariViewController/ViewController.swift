//
//  ViewController.swift
//  WebViewWithSafariViewController
//
//  Created by Satish Chauhan on 9/12/17.
//  Copyright © 2017 Satish. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {
    private var urlString = "https://google.com"

    @IBAction private func openInSafari(_ sender: AnyObject) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

    @IBAction private func openWithSafariVC(_ sender: AnyObject) {
        if let url = URL(string: urlString) {
            let svc = SFSafariViewController(url: url)
            self.present(svc, animated: true, completion: nil)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)

        if let navigationController = segue.destination as? UINavigationController,
            let vc = navigationController.viewControllers.first as? WebViewController {
            vc.urlString = urlString
        }
    }
}

