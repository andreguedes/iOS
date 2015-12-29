//
//  main.swift
//  4 - OlaSwift
//
//  Created by André Guedes on 28/12/15.
//  Copyright © 2015 André Ricardo de Souza Guedes. All rights reserved.
//

import Foundation

print("Hello, World!")

func testeVar() {
    var a = 1
    let b:Int = 2
    a = 3
    let nome = "Andre"
    print("Olá \(nome), o resultado da soma é: \(a+b)")
}

testeVar()

func testeVarOpicional() {
    var nome:String?
    nome = "Andre"
    if let s = nome {
        print("Ola \(s)")
    } else {
        print("Ola desconhecido")
    }
}

testeVarOpicional()

func testeCarro1() {
    let c = Carro(nome: "Fusca", ano: 1934)
    //c.nome = "Fusca"
    //c.ano = 1934
    
    print("Carro: \(c.nome), ano: \(c.ano)")
}

testeCarro1()

func testeConstrutorConvenience() {
    let c = Carro(nome: "Fusca")
    print("Carro: \(c.nome), ano: \(c.ano)")
}

testeConstrutorConvenience()