import UIKit

// Arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

// Operator overloading

/* Swift supports operator overloading, which is a fancy way of saying that what an operator does depends on the values you use it with. For example, + sums integers like this:
*/

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

// You can even use + to join arrays, like this:

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// Compound assignment operators

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// Comparison operators

let firstScore2 = 6
let secondScore2 = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

// Each of these also work with strings, because strings have a natural alphabetical order:

"Taylor" <= "Swift"

// Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

// Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}


if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// The ternary operator

let firstCard2 = 11
let secondCard2 = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

// Switch statements

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

/* Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:
*/

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

// Range operators

// Swift gives us two ways of making ranges: the ..< and ... operators

let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// Notes / Summary

/*
1- Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.

2- There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
3- You can use if, else, and else if to run code based on the result of a condition.

4- Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
 
5- If you have multiple conditions using the same value, it’s often clearer to use switch instead.

6- You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
 */
 


