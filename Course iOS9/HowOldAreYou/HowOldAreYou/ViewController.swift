//
//  ViewController.swift
//  HowOldAreYou
//
//  Created by André Ricardo de Souza Guedes on 10/07/16.
//  Copyright © 2016 André Ricardo de Souza Guedes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var txtAgeField: UITextField!
    
    @IBAction func btnEnviar(sender: AnyObject) {
        print("Button tapped")
        label.text = txtAgeField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Ola pessoal!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}