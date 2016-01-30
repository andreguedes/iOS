//
//  Prefs.swift
//  5 - Carros
//
//  Created by André Guedes on 11/01/16.
//  Copyright © 2016 André Ricardo de Souza Guedes. All rights reserved.
//

import Foundation

class Prefs {
    
    class func getFilePath(nome: String) -> String {
        return NSHomeDirectory() + "/Documents/" + nome + ".txt"
    }
    
    class func setString(valor: String, chave: String) {
        let path = getFilePath(chave)
        let nsdata = StringUtils.toNSData(valor)
        _ = StringUtils.toString(nsdata)
        nsdata.writeToFile(path, atomically: true)
    }
    
    class func getString(chave: String) -> String! {
        let path = getFilePath(chave)
        let nsdata = NSData(contentsOfFile: path)
        return StringUtils.toString(nsdata)
    }
    
    class func setInt(valor: Int, chave: String) {
        setString(String(valor), chave: chave)
    }
    
    class func getInt(chave: String) -> Int {
        let valorString: String! = getString(chave)
        if (valorString == nil) {
            return 0
        }
        let valorInt = Int(valorString)
        return valorInt!
    }

}
