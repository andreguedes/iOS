//
//  SobreViewController.swift
//  5 - Carros
//
//  Created by André Guedes on 28/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

import UIKit

let URL_SOBRE = "http://www.livroiphone.com.br/carros/sobre.htm"

class SobreViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var webView : UIWebView!
    @IBOutlet var progress : UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Sobre"
        
        self.progress.startAnimating()
        
        let url = NSURL(string: URL_SOBRE)!
        let request = NSURLRequest(URL: url)
        
        self.webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        progress.stopAnimating()
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }

}
