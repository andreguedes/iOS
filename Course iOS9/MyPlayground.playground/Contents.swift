//: Playground - noun: a place where people can play

import UIKit

//String
var str = "Hello, playground"
var name:String = "André Guedes"
print("Hello \(name)")
print("Hello " + name + ".")

//Integer
var int:Int = 9
int = int * 2
int = int / 2

var anotherInt = 7
print(int * anotherInt)
print("The value of int is \(int)")

//Decimal
var number:Double = 8.3
print(number * Double(int))

//Boolean
var isMale:Bool = true


//Exercise
var intValue:Int = 2
var doubleValue:Double = 3.2

print("Multiplicacao entre \(intValue) por \(doubleValue) é \(Double(intValue) * doubleValue)")

//Arrays
var array = [3, 2, 1, 5, 4]
print(array[2])
print(array.count)

array.append(10)
array.removeAtIndex(3)
print(array)

array.sort()

// Exercise
var newArray = [1, 2, 3]
newArray.removeAtIndex(1)
newArray.append(newArray[0] * newArray[1])
print("Multiplicacao entre \(newArray[0]) por \(newArray[1]) é \(newArray[2])")

var dictionary = ["computer": "some machine", "coffee": "best drink"]
print(dictionary["computer"]!)
print(dictionary.count)

dictionary["pen"] = "Writing tool"
dictionary.removeValueForKey("coffee")
print(dictionary)

//Exercise
var newDictionary = ["pizza": 20.5, "soda": 3.5, "salad": 9.9]
var totalValue = newDictionary["pizza"]! + newDictionary["soda"]! + newDictionary["salad"]!
print("The total cost of three items is \(totalValue)")