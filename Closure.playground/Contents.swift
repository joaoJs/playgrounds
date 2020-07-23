import UIKit

func timesTwo(_ n : Int) -> Int {
    return n * 2
}

func getMappedValues(_ arr : [Int],_ closure: (Int) -> Int) -> Dictionary<Int,Int> {
    var mappedValues = Dictionary<Int,Int>()
    arr.forEach {
        mappedValues[$0] = closure($0)
    }
    return mappedValues
}

print(getMappedValues([1,5,2], timesTwo))

/*
2: Questionaire:

What is the difference between var and let?
    let is a constant and cannot be reassigned. Var can be reassigned.
 
What is an optional?
    optional is a variable that does not need to have a value. It can be nil. It is specified by adding "?" after the data type.
    ex.: var middleName: String?
 
What is optional chaining vs optional binding?
    In optional chaining, the next value of the chain can only be accessed if the current value is not nil.
    Optional binding, or safe unwrapping, is a way of safely unwrapp an optional value.
 
What are the different ways to unwrap an optional? How do they work? Are they safe?
    optional binding - safe.
    forced unwrapping - safe.
    nil coalescing - safe
 
What is a closure?
    A closure is a function that can be passed as an argument to another function.
    They have access to variables that belong to the context (scope) in which they were defined. It's widely used in functional programming for encapsulation and memoization.
 
What is the difference between a class and a struct?
    An instance of a class is mutable, whereas struct is immutable. Classes have constructors, structs have implicit constructors.
 
What is the syntax '??' do?
    nil coalescing. It is used to safely unwrap an optional. If the optional is not nil, we access its value, otherwise, we access the value that comes after ??
 
What is a tuple?
    It is a type with key and value. Like the dictionary, it can be created on the fly. It is commonly used to return multiple values from a function.
 
What is Any vs AnyObject?
    AnyObject is used only for reference types (classes) while Any can be used for both value and reference types
 
What is a protocol?
    protocol specifies behavior and state that can be implemented by classes, structs or enums. It helps achieve the Dependency Inversion Principle by providing a level of abstraction.
 */
