/*:
 ## Silver Challenge
 Implement a function `forEach(array: [Int], _ closure: Int -> ())` that takes an array of integers and a closure and runs the closure for each element of the array.

 Function input:
 ```
 forEach([1, 2, 3]) {
    print($0 + 1)
 }
 ```

 Output:
 ```
 2
 3
 4
 ```
*/
func forEach(array: [Int], _ closure: (Int) -> ()) {
    for i in 0...(array.count - 1){
        closure(array[i])
    }
}

forEach(array: [1, 2, 3], {print($0 + 1)})

let half: (Int) -> () = { print(Double($0) / 2) }
forEach(array: [1, 2, 3], half)
//: [Bronze Challenge](@previous)  |  Challenge 2 of 2
