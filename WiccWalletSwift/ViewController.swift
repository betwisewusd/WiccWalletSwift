//
//  ViewController.swift
//  WiccWalletSwift
//
//  Created by waykichain on 2020/1/2.
//  Copyright © 2020 waykichain. All rights reserved.
//

import UIKit
import WebKit

class ViewController: WaykiChainViewController {

//    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 钱包URL
        let url = URLRequest(url: URL(string: "https://dev-app.betwise888.com/wallet/index.html#/")!)
        wkWebView.load(url)

        self.view.addSubview(wkWebView)
    }


}

