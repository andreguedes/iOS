//
//  CarroService.swift
//  5 - Carros
//
//  Created by André Guedes on 29/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

import Foundation

class CarroService {
    
    class func getCarros() -> Array<Carro> {
        var carros : Array<Carro> = []
        
        for (var i = 0; i < 20; i++) {
            let c = Carro()
            c.nome = "Ferrari " + String(i)
            c.desc = "Desc Ferrari " + String(i)
            c.url_foto = "Ferrari_FF.png"
            carros.append(c)
        }
        
        return carros
    }
    
    class func getCarrosByTipo(tipo: String, callback: (carros: Array<Carro>, error: NSError!) -> Void) {
        let http = NSURLSession.sharedSession()
        let url = NSURL(string: "http://www.livroiphone.com.br/carros/carros_" + tipo + ".json")!
        let task = http.dataTaskWithURL(url, completionHandler: {
            (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            if (error != nil) {
                callback(carros: [], error: error)
            } else {
                let carros = self.parserJSON(data!)
                dispatch_sync(dispatch_get_main_queue(), {
                    callback(carros: carros, error: nil)
                })
            }
        })
        task.resume()
    }
    
    class func getCarrosByTipoFromFile(tipo: String) -> Array<Carro> {
        let file = "carros_" + tipo
        //let path = NSBundle.mainBundle().pathForResource(file, ofType: "xml")!
        let path = NSBundle.mainBundle().pathForResource(file, ofType: "json")!
        let data = NSData(contentsOfFile: path)!
        
        if (data.length == 0) {
            print("NSData vazio")
            return []
        }
        
        let carros = parserJSON(data)
        
        //let carros = parserXML_SAX(data)
        //let carros = parserXML_DOM(data)
        return carros
    }
    
    class func parserJSON(data: NSData) -> Array<Carro> {
        if (data.length == 0) {
            return []
        }
        
        var carros : Array<Carro> = []
        
        let dict : NSDictionary = try! NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
            
        let jsonCarros : NSDictionary = dict["carros"] as! NSDictionary
        let arrayCarros : NSArray = jsonCarros["carro"] as! NSArray
        
        for obj:AnyObject in arrayCarros {
            let dict = obj as! NSDictionary
            let carro = Carro()
            carro.nome = dict["nome"] as! String
            carro.desc = dict["desc"]as! String
            carro.url_foto = dict["url_foto"] as! String
            carro.url_info = dict["url_info"]as! String
            carro.url_video = dict["url_video"]as! String
            carro.latitude = dict["latitude"] as! String
            carro.longitude = dict["longitude"]as! String
            carros.append(carro)
        }
        
        return carros
    }
    
//    class func parserXML_SAX(data: NSData) -> Array<Carro> {
//        if (data.length == 0) {
//            return []
//        }
//        
//        var carros : Array<Carro> = []
//        let xmlParser = NSXMLParser(data: data)
//        let carrosParser = XMLCarroParser()
//        xmlParser.delegate = carrosParser
//        
//        let ok = xmlParser.parse()
//        if (ok) {
//            carros = carrosParser.carros
//            //var count = countElements(carros)
//            print("Parser, encontrado \(carros.count) carros")
//        } else {
//            print("Erro no Parser")
//        }
//        
//        return carros
//    }
    
//    class func parserXML_DOM(data: NSData) -> Array<Carro> {
//        if (data.length == 0) {
//            return []
//        }
//        
//        var carros : Array<Carro> = []
//        
//        let document = SMXMLDocument(data: data)
//        if (document == nil) {
//            print("Erro ao ler os dados")
//            return carros
//        }
//        
//        let root = document.root as SMXMLDocument
//        let tagCarros = root.childrenNamed("carro") as NSArray
//        for x:AnyObject in tagCarros {
//            var xml = x as SMXMLElement
//            var carro = Carro()
//            carro.nome = xml.valueWithPath("nome")
//            carro.desc = xml.valueWithPath("desc")
//            carro.url_info = xml.valueWithPath("url_info")
//            carro.url_foto = xml.valueWithPath("url_foto")
//            carro.url_video = xml.valueWithPath("url_video")
//            if (xml.valueWithPath("latitude") != nil) {
//                carro.latitude = xml.valueWithPath("latitude")
//            }
//            if (xml.valueWithPath("longitude") != nil) {
//                carro.longitude = xml.valueWithPath("longitude")
//            }
//            carros.append(carro)
//        }
//        
//        return carros
//    }
    
}