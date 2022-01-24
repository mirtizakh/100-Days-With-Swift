import UIKit

var str = "playground"

/*
If you want multi-line strings you need slightly different syntax: start and end with three double quote marks, like this:
*/
var str1 = """
This goes
over multiple
lines
"""

/*
If you only want multi-line strings to format your code neatly, and you don’t want those line breaks to actually be in your string, end each line with a \, like this:
*/
var str2 = """
This goes \
over multiple \
lines
"""

// String interpolation
/*
 You can place any type of variable inside your string – all you have to do is write a backslash, \, followed by your variable name in parentheses. For example:
*/
var score = 85
var str3 = "Your score was \(score)"

/*
 The let keyword creates constants, which are values that can be set once and never again. For example:
*/
let taylor = "swift"

// Type annotations
/* Swift assigns each variable and constant a type based on what value it’s given when it’s created. So, when you write code like this Swift can see it holds a string.

 That will make str a string, so you can’t try to assign it an integer or a boolean later on. This is called type inference
*/
let str4 = "Hello, playground"

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

// Note / Summary
/*
 
 1- You make variables using var and constants using let. It’s preferable to use constants as often as possible.
 
 2- Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
 
 3- Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
 
 4- String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
 
 5- Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
 */


 
 
