//
//  XMLCarroParser.swift
//  5 - Carros
//
//  Created by André Guedes on 30/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

import Foundation

class XMLCarroParser : NSObject, NSXMLParserDelegate {
    
    var carros : Array<Carro> = []
    var tempString : String = ""
    var carro : Carro?
    
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]) {
        if ("carro" == elementName) {
            carro = Carro()
        }
    }
    
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if ("carros" == elementName) {
            // fim da tag
            return
        }
        if ("carro" == elementName) {
            self.carros.append(carro!)
            carro = nil
            return
        }
        
        if (carro != nil) {
            if ("nome" == elementName) {
                carro!.nome = tempString
            } else if ("desc" == elementName) {
                carro!.desc = tempString
            } else if ("url_foto" == elementName) {
                carro!.url_foto = tempString
            } else if ("url_info" == elementName) {
                carro!.url_info = tempString
            } else if ("url_video" == elementName) {
                carro!.url_video = tempString
            } else if ("latitude" == elementName) {
                carro!.latitude = tempString
            } else if ("longitude" == elementName) {
                carro!.longitude = tempString
            }
            tempString = ""
        }
    }
    
    func parser(parser: NSXMLParser, foundCharacters string: String) {
        tempString += string.stringByTrimmingCharactersInSet(.whitespaceAndNewlineCharacterSet())
    }
    
}