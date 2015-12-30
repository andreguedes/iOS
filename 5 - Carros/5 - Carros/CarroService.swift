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
    
}