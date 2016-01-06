//
//  StringUtils.swift
//  Carros
//
//

import Foundation

class StringUtils {
    
    class func toString(data: NSData!) -> String! {
        if(data == nil) {
            return nil
        }
        return NSString(data: data, encoding: NSUTF8StringEncoding)! as String
    }
    
    class func toNSData(s: String) -> NSData {
        let data = s.dataUsingEncoding(NSUTF8StringEncoding)
        return data!
    }
    
    class func toCString(s: String) -> UnsafePointer<Int8> {
        // cast to NSString
        // const char *
        let cstring = ("string" as NSString).UTF8String
        return cstring
    }
    
    class func trim(s: String) -> String {
        return s.stringByTrimmingCharactersInSet(.whitespaceAndNewlineCharacterSet())
    }
    
    class func isEmpty(s: String!) -> Bool {
        let count = StringUtils.count(s)
        return count == 0
    }
    
    class func count(s: String!) -> Int {
        if(s == nil) {
            return 0
        }
        return count(s!)
    }
    
    class func replace(s: String, string: String, withString: String) -> String {
        return s.stringByReplacingOccurrencesOfString(string, withString: withString, options: NSStringCompareOptions.LiteralSearch, range: nil)
    }
}