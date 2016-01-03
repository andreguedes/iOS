//
//  DetalhesCarroViewController.swift
//  5 - Carros
//
//  Created by André Guedes on 28/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

import UIKit

class DetalhesCarroViewController: UIViewController {
    
    @IBOutlet var img : UIImageView!
    @IBOutlet var tDesc : UITextView!
    
    var carro : Carro?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let c = carro {
            self.title = c.nome
            self.tDesc.text = c.desc
            
            let data = NSData(contentsOfURL: NSURL(string: c.url_foto)!)!
            let img = UIImage(data: data)
            self.img.image = img
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransitionToSize \(size)")
        if (size.width > size.height) {
            print("Horizontal")
            tDesc.hidden = true
            
            self.tabBarController!.tabBar.hidden = true
            self.navigationController!.navigationBar.hidden = true
        } else {
            print("Vertical")
            tDesc.hidden = false
            
            self.tabBarController!.tabBar.hidden = false
            self.navigationController!.navigationBar.hidden = false
        }
        self.setNeedsStatusBarAppearanceUpdate()
    }

}
