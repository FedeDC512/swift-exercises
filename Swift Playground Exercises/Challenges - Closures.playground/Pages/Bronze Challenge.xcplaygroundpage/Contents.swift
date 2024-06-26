/*:
 ## Bronze Challenge
 Write a function named `applyKTimes( _ K: Int, _ closure: ()->())` that takes an integer `K` and a `closure` and calls the closure K times. The closure will not take any parameters and will not have a return value.
 - Hint: Remember that you can call a closure just like a regular function.
 */
func applyKTimes( _ K: Int, _ closure: ()->()) {
    for i in 1...K {
        closure()
    }
}

let hi: ()->() = { print("Hi") }

applyKTimes(8, hi)
//: Challenge 1 of 2  |  [Next: Silver Challenge](@next)
