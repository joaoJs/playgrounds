import UIKit

enum FizzBuzz {
    case multipleOf6
    case multipleOf3
    case multipleOf2
}

func getCase(n: Int) -> FizzBuzz? {
    var tempEnum: FizzBuzz?
    if n.isMultiple(of: 6) {
        tempEnum = FizzBuzz.multipleOf6
    } else if n.isMultiple(of: 3) {
        tempEnum = FizzBuzz.multipleOf3
    } else if n.isMultiple(of: 2) {
        tempEnum = FizzBuzz.multipleOf2
    } else {
        tempEnum = nil
    }
    return tempEnum
}

for var i in 0...30 {
    let num = getCase(n: i)
    switch num {
    case .multipleOf6:
        print("FizzBuzz")
    case .multipleOf3:
        print("Buzz")
    case .multipleOf2:
        print("Fizz")
    default:
        print(i)
    }
}

