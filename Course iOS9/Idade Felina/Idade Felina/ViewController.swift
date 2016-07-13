//
//  ViewController.swift
//  Idade Felina
//
//  Created by André Ricardo de Souza Guedes on 12/07/16.
//  Copyright © 2016 André Ricardo de Souza Guedes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCatAge: UITextField!
    @IBOutlet weak var txtResult: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        var catAge = Int(txtCatAge.text!)!
        catAge = catAge * 7
        txtResult.text = "A idade do seu gato é \(catAge)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

