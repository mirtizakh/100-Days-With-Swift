import UIKit

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

//Sets
/* Sets are collections of values just like arrays, except they have two differences:

1- Items aren’t stored in any order; they are stored in what is effectively a random order.
2- No item can appear twice in a set; all items must be unique.

 You can create sets directly from arrays, like this:
*/

let colors = Set(["red", "green", "blue"])

//Tuples
/* Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:
 
1- You can’t add or remove items from a tuple; they are fixed in size.
2- You can’t change the type of items in a tuple; they always have the same types they were created with.
3- You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
 
 Tuples are created by placing multiple items into parentheses, like this:
 */

 var name = (first: "Taylor", last: "Swift")

/* You then access items using numerical positions starting from 0:

name.0
Or you can access items using their names:

name.first
*/

//Arrays vs sets vs tuples

/* Arrays, sets, and tuples can seem similar at first, but they have distinct uses. To help you know which to use, here are some rules.

If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
*/

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

/* If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
*/

let set = Set(["aardvark", "astronaut", "azalea"])

/* If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
*/

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Dictionaries
/* Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want.
 
 The most common way of storing dictionary data is using strings. For example, we could create a dictionary that stores the height of singers using their name:
 */

 let heights = [
 "Taylor Swift": 1.78,
 "Ed Sheeran": 1.73
 ]

// Dictionary default values
/* If you try to read a value from a dictionary using a key that doesn’t exist, Swift will send you back nil – nothing at all.
 */

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

var result = favoriteIceCream["Charlotte"]
var defaultResult = favoriteIceCream["Charlotte", default: "Unknown"]

// Creating empty dictionary

var teams = [String: String]()
teams["Paul"] = "Red"

// Creating empty array

var results = [Int]()

// Creating empty set

var words = Set<String>()
var numbers = Set<Int>()

// Creating empty array and dictionary with syntax

var scores = Dictionary<String, Int>()
var results1 = Array<Int>()

// Enumerations

enum Result {
    case success
    case failure
}

let result4 = Result.failure

// Enum associated values

enum Activity1 {
    case bored
    case running
    case talking
    case singing
}

/* That lets us say that someone is talking, but we don’t know what they are talking about, or we can know that someone is running, but we don’t know where they are running to.
 
 Enum associated values let us add those additional details:
*/

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Enum raw values

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

enum Planets: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

/* Now Swift will assign 1 to mercury and count upwards from there, meaning that earth is now the third planet.
*/

// Notes / Summary

/*
1- You’ve made it to the end of the second part of this series, so let’s summarize:
 
2- Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.

3- Arrays store items in the order you add them, and you access them using numerical positions.

4- Sets store items without any order, so you can’t access them using numerical positions.

5- Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.

6- Dictionaries store items according to a key, and you can read items using those keys.

7- Enums are a way of grouping related values so you can use them without spelling mistakes.

8- You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.
 */
