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
    
    var tipo = "classicos"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false

        self.title = "Carros"
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        //self.carros = CarroService.getCarros()
        self.carros = CarroService.getCarrosByTipoFromFile("esportivos")
        
        let xib = UINib(nibName: "CarroCell", bundle: nil)
        self.tableView.registerNib(xib, forCellReuseIdentifier: "cell")
        
        self.buscarCarros()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func alterarTipo(sender: UISegmentedControl) {
        let idx = sender.selectedSegmentIndex
        switch(idx) {
        case 0:
            self.tipo = "classicos"
        case 1:
            self.tipo = "esportivos"
        default:
            self.tipo = "luxo"
        }
        
        self.buscarCarros()
    }
    
    func buscarCarros() {
        self.carros = CarroService.getCarrosByTipoFromFile(tipo)
        
        self.tableView.reloadData()
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
        
        let cellID = "cell"
        let linha = indexPath.row
        let carro = carros[linha]
        
        let cell = self.tableView.dequeueReusableCellWithIdentifier(cellID) as! CarroCell
        cell.cellNome.text = carro.nome
        cell.cellDesc.text = carro.desc
        
        let data = NSData(contentsOfURL: NSURL(string: carro.url_foto)!)!
        cell.cellImg.image = UIImage(data: data)
        
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
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }

}
