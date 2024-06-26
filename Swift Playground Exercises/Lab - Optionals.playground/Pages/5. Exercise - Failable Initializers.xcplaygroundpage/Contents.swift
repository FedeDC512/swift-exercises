/*:
 ## Exercise - Failable Initializers
 
 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2017.
 */
struct Computer {
    let ram:Int
    let yearManufactured:Int
    
    init?(ram:Int, yearManufactured:Int) {
        if (ram > 0) && (yearManufactured > 1970 && yearManufactured < 2017) {
            self.ram = ram
            self.yearManufactured = yearManufactured
        } else {
            return nil
        }
    }
}

/*:
 Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
 */
if let computer1 = Computer(ram: 16, yearManufactured: 2016) {
    print(computer1)
}

if let computer2 = Computer(ram: 4, yearManufactured: 2018) {
    print(computer2)
}
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
