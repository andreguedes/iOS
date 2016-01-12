//
//  Prefs.swift
//  5 - Carros
//
//  Created by André Guedes on 11/01/16.
//  Copyright © 2016 André Ricardo de Souza Guedes. All rights reserved.
//

import Foundation

class Prefs {
    
//    //Salvando as preferencias no NSUserDefaults
//    class func getPrefs() -> NSUserDefaults {
//        return NSUserDefaults.standardUserDefaults()
//    }
//    
//    class func setString(valor: String, chave: String) {
//        let prefs = getPrefs()
//        prefs.setValue(valor, forKey: chave)
//        prefs.synchronize()
//    }
//    
//    class func getString(chave: String) -> String! {
//        let prefs = getPrefs()
//        return prefs.stringForKey(chave)
//    }
//    
//    class func setInt(valor: Int, chave: String) {
//        let prefs = getPrefs()
//        prefs.setInteger(valor, forKey: chave)
//        prefs.synchronize()
//    }
//    
//    class func getInt(chave: String) -> Int! {
//        let prefs = getPrefs()
//        return prefs.integerForKey(chave)
//    }
    
    class func getFilePath(nome: String) -> String {
        return NSHomeDirectory() + "/Documents/" + nome + ".txt"
    }
    
    class func setString(valor: String, chave: String) {
        let path = getFilePath(chave)
        let nsdata = StringUtils.toNSData(valor)
        var s = StringUtils.toString(nsdata)
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
