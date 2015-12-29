//
//  Carro.swift
//  4 - OlaSwift
//
//  Created by André Guedes on 28/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

import Foundation

class Carro {
    var nome:String
    var ano:Int
    
    init(nome:String, ano:Int) {
        self.nome = nome
        self.ano = ano
    }
    
    convenience init(nome:String) {
        self.init(nome:nome, ano:1950)
    }
}