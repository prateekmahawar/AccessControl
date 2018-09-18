//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print(str)

/*
 1. private
 2. fileprivate - Avaible in that file only
 3. internal - By default(Everything we dont see before init in normal files)(Available within that module)
 4. public - Cannot be overriden
 5. open - can be overriden
 */

//Ex 1) Game Application

class Game {
    private var number = 0
    
    var score: Int {
        return number
    }
    
    func increaseByOne() {
        number += 1
    }
}
// Inaccessible outside class
//Game().number = 10

//Ex 2) Singleton

class AccountManager {
    static let sharedInstance = AccountManager()
    var userInfo = (ID: "prateekMahawar", Password: 22222222)
//Init protecting the code
    private init () {}
}
//Inaccessible
//AccountManager()

//Swift 4 Change

class Status  {
    private var isHappy = true
}
//Not available outside of class definition before swift 4
extension Status {
    func checkStatus() {
        print(isHappy)
    }
}
