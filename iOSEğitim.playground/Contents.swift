import UIKit

//var let
var str = "Hello, playground"
str = "Hi"

var str_2 = "Merhaba"
str_2 = ""

//Types
var integer = 1
var double: Double = 1.1
var float = 1.1

//Printing
print("Integer value is " + "\(integer)")
print(str)

//Array
var myArray = ["Apple", "Orange", "Banana"]
myArray.append("Grape")

print(myArray)

//If
let controlValue = 5
var checkIntegerValue = 5

if checkIntegerValue == controlValue {
    print("Value == " + "\(controlValue)")
}

//For
var forArray = [1, 2, 3, 4, 5]

for ahmet in forArray {
    print(ahmet)
}

//Functions
func sumNumber(num1: Int? = 5, num2: Int? = 7, num3: Int = 20) -> Int {
    print(num1)
    print(num2)
    
    if num1 == nil || num2 == nil {
        return 0
    }
    
    guard let numForce1 = num1, let numForce2 = num2 else { return 0 }
    
    if let numLet1 = num1, let numLet2 = num2 {
        return numLet1 + numLet2
    } else {
        return 0
    }
    
    return numForce1 + numForce2
}

func completeClosure(valueOne: Int, valueTwo: Int, completion : (Int, Int) -> ()) {
    print(valueOne)
    print(valueTwo)
    completion(valueOne, valueTwo)
}

var firstNumber: Int? = 3
firstNumber = nil

var secondNumber: Int? = 5
secondNumber = nil

let sum = sumNumber(num1: firstNumber, num2: secondNumber)
let defaultSum = sumNumber()
print(sum)

completeClosure(valueOne: 10, valueTwo: 20) { (adasd, hjkhk) in
    print(adasd + hjkhk)
}

//Class
class MyClass {
    var firstProperty: Int
    var secondProperty: Int
    
    init() {
        firstProperty = 1
        secondProperty = 2
    }
    
    init(first: Int, second: Int) {
        firstProperty = first
        secondProperty = second
    }
    
    func sumProperties() -> Int {
        return firstProperty + secondProperty
    }
}

let initialMyClass = MyClass()
var initialMyClass2 = initialMyClass

initialMyClass.firstProperty = 0
print(initialMyClass2.firstProperty)

let customMyClass = MyClass(first: 3, second: 10)
print(customMyClass.sumProperties())

struct MyStruct {
    var firstProperty: Int = 5
    var secondProperty: Int = 10
}

var initialMyStruct = MyStruct()
let initialMyStruct2 = initialMyStruct

initialMyStruct.firstProperty = 20
print(initialMyStruct2.firstProperty)

//Protocol
protocol MyProtocol {
    func multiplyProperties() -> Int
}

class Multiplier: MyProtocol {
    var valueOne = 100
    var valueTwo = 2
    
    func multiplyProperties() -> Int {
        return valueOne * valueOne
    }
    
    
}

//Protocol Oriented Employee
protocol CostableProtocol {
    func getCost() -> Int
}

class Machine: CostableProtocol {
    func getCost() -> Int {
        return 100
    }
}

class EmployeeP: CostableProtocol {
    var age: Int = 0
    
    func getCost() -> Int{
        return 10000
    }
}

class Assistant: EmployeeP {
    override func getCost() -> Int {
        return super.getCost() + age * 100
    }
}

class Director: EmployeeP {
    override func getCost() -> Int {
        return super.getCost() + age * 200
    }
}

class CompanyP {
    var array: [EmployeeP] = []
}

let company2 = CompanyP()
company2.array = [Assistant(), Director(), Director(), EmployeeP()]

