import UIKit

func square(number: Int) {
    print(number * number)
}

square(number: 8)

// Returning values

func square(number: Int) -> Int {
    return number * number
}

// Parameter labels

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

/*
 The parameter is called to name, which means externally it’s called to, but internally it’s called name. This gives variables a sensible name inside the function, but means calling the function reads naturally:
*/

sayHello(to: "Taylor")

// Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

// Default parameters

func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Taylor", nicely: false)

// Variadic functions

/*
 Some functions are variadic, which is a fancy way of saying they accept any number of parameters of the same type.
*/

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)

// Writing throwing functions

/*
 Sometimes functions fail because they have bad input, or because something went wrong internally. Swift lets us throw errors from functions by marking them as throws before their return type, then using the throw keyword when something goes wrong.
 
*/

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

// Running throwing functions

/*
 Swift doesn’t like errors to happen when your program runs, which means it won’t let you run an error-throwing function by accident.
 
 Instead, you need to call these functions using three new keywords: do starts a section of code that might cause problems, try is used before every function that might throw an error, and catch lets you handle errors gracefully.
 
 If any errors are thrown inside the do block, execution immediately jumps to the catch block. Let’s try calling checkPassword() with a parameter that throws an error:
 */

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// inout parameters

/*
 All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as inout, which means they can be changed inside your function, and those changes reflect in the original value outside the function.
*/

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)


// Note / Summary

/*
1- Functions let us re-use code without repeating ourselves.
2- Functions can accept parameters – just tell Swift the type of each parameter.
3- Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
4- You can use different names for parameters externally and internally, or omit the external name entirely.
5- Parameters can have default values, which helps you write less code when specific values are common.
6- Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
7- Functions can throw errors, but you must call them using try and handle errors using catch.
8- You can use inout to change variables inside a function, but it’s usually better to return a new value
 
*/
