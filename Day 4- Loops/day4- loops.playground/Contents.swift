import UIKit

// For loop

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}


/* If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values:
*/

for _ in 1...5 {
    print("play")
}

// While loops

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

// Repeat loops
// Similar to do while loop of java

var number2 = 1

repeat {
    print(number2)
    number += 1
} while number2 <= 20

print("Ready or not, here I come!")

// Exiting loops
var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    
    countDown -= 1
}

// Exiting multiple loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Skipping items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}

/* Note / Summary

1- Loops let us repeat code until a condition is false.

2- The most common loop is for, which assigns each item inside the loop to a temporary constant.

3- If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.

4- There are while loops, which you provide with an explicit condition to check.
 
5- Although they are similar to while loops, repeat loops always run the body of their loop at least once.
 
6- You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.

7-You can skip items in a loop using continue.
 
*/


