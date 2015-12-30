//
//  ListaCarrosViewController.swift
//  5 - Carros
//
//  Created by André Guedes on 28/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

import UIKit

class ListaCarrosViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView : UITableView!
    
    var carros : Array<Carro> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Carros"
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.carros = CarroService.getCarros()
        
        let xib = UINib(nibName: "CarroCell", bundle: nil)
        self.tableView.registerNib(xib, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.carros.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
//        let linha = indexPath.row
//        
//        let carro = self.carros[linha]
//        cell.textLabel!.text = carro.nome
//        cell.imageView!.image = UIImage(named: carro.url_foto)
        
        var cellID = "cell"
        var linha = indexPath.row
        var carro = carros[linha]
        
        var cell = self.tableView.dequeueReusableCellWithIdentifier(cellID) as! CarroCell
        cell.cellNome.text = carro.nome
        cell.cellDesc.text = carro.desc
        cell.cellImg.image = UIImage(named: carro.url_foto)
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let linha = indexPath.row
        
        let carro = self.carros[linha]
        //Alerta.alerta("Selecionou o carro: \(carro.nome)", viewController: self)
        
        let vc = DetalhesCarroViewController(nibName:"DetalhesCarroViewController", bundle: nil)
        vc.carro = carro
        self.navigationController!.pushViewController(vc, animated: true)
    }

}
