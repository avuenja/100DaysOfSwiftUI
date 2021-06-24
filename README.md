# 100 Days of SwiftUI

## Every day

- One hour per day (watching, reading or writing Swift)
- Tell people about your progress (twitter, instagram or anywhere platform)

### Day 1 - variables, simple data types, and string interpolation

- For to use variables in Swift, we using the `var` word, the variables are always mutable.
- Swift is a type-safe language, for `String` types we use double quotes (""), to involve a value. For values `Integer` we pass directly the number or use `underscore` for separate the number.
- For being a type-safe language, we can't attribute a different type of value after to attribute the first time.
- Multi-lines string we owe to use three double quotes (""") in start and end of value. For format the multi-lines strings, we pass the backslash (\).
- Double values we separate the decimal places with dot (.), and the boolean values can be `true` or `false`.
- String interpolation we use backslash (\) followed by parentheses (), that involve a variable.
- For immutable variables we owe to use the `let` word. Thus we create a constants.
- Type annotations: Also, we can to make explicit the variables/constants types, passing the type after name using `name: Type` e.g.: `let isActive: Bool = true`.

### Day 2 - arrays, dictionaries, sets, and enums

- Arrays can keep many values inside itself, and remember, the index ever always start with 0.
- Set not guarantee the order of objects inside itself, also Set not keep duplicate values. For create a new `Set`, we ever to pass an array for inside it.
- Tuples don't change it size, we can't add more values or remove it.
- The principal difference is that `Tuples` are fixed size and named index, `Set` are unique values and `Arrays` are can keep many values even thought duplicates.
- Dictionaries can keep many values ahead a named index. Also we can define a default value if named index not exists.
- We can create an empty arrays, dictionaries and sets.
- Enumerations are perfect for keep consistent results. Also we can add associated values for the enum, for thus we don't need create a giant enum.
- Enum raw values, enables us to use dynamically values.

### Day 3 - operators and conditions

- Arithmetic operators are: `+ - * / %`.
- Operator overloading: `+` sum if is Int or `Double` numbers, concat if is `String`, join if is `Array`.
- Compound assignment operators: `+=` `-=`
- Comparison operators: `==` `!=` `>=` `<=` `>` `<`
- Conditions: `if` `else` `else if`.
- Combining conditions: `&&` (and) and `||` (or).
- The ternary operator: `let phone = "iPhone"` `print(phone == "Android" ? "Failure" : "Success")`
- Range operators: `..<` `..>` `...`

### Day 4 - loops, loops, and more loops

- For Loops perform a range of numbers, where we can access each value individually, if you don't wants to use a value in loop, u can use `_` (underscore) for omitting it.
- A second way of writing loops is using `while`: give it a condition to check, and its loop code will go around and around until the condition fails.
- The third way of writing loops is not commonly used, but it’s so simple to learn we might as well cover it: it’s called the `repeat` loop, and it’s identical to a `while` loop except the condition to check comes at the end.
- We can exiting a loop with `break` statement. For exiting multiple loops, we need add a `label` for outer loop, and so, add `break label` statement.

  e.g.: label `myLoop`

  ```swift
  myLoop: for i in 1...10 {
      for j in 1...10 {
          let product = i * j
          print ("\(i) * \(j) is \(product)")

          if product == 50 {
              print("It's a bullseye!")
              break myLoop
          }
      }
  }
  ```

- For we skipping items in a loop, we can use `continue` statement.
- Infinite loops don’t end until you ask them to, and are made using `while true`. Make sure you have a condition somewhere to end your infinite loops!

### Day 5 - functions, parameters, and errors

- Functions are designed to let us re-use code easily
- Functions can accept parameters – just tell Swift the type of each parameter.
- Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
- You can use different names for parameters externally and internally, or omit the external name entirely.
- Parameters can have default values, which helps you write less code when specific values are common.
- Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
- Functions can throw errors, but you must call them using `try` and handle errors using `catch`.
- All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as `inout`, which means they can be changed inside your function, and those changes reflect in the original value outside the function.

### Day 6 - Closures, part one

- Closures are like with functions, but are writing differently it. We can assign closure to a variable and after we used like a function
- Unlike functions, closures put their parameters inside the opening brace.
- In Closures, we can't use labels for the parameters. And we pass the parameter directly in the call.
- Closures can also return values ,and they are written similarly to parameters: you write them inside your closure, directly before the `in` keyword.
- Closures can be used like parameters into a functions. E.g.: `func travel(action: () -> Void) {}`
- We can trailing closures syntax, when the closure be the last parameter into a function.

  ```swift
  func travel(action: () -> Void) {
      print("I'm getting ready to go.")
      action()
      print("I arrived!")
  }

  // Trailing closure syntax
  travel() {
      print("I'm driving in my car")
  }

  travel {
      print("I'm driving in my car")
  }
  ```

### Day 7 - Closures, part two

- You can assign closures to variables, then call them later on.
- Closures can accept parameters and return values, like regular functions.
- You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
- If the last parameter to your function is a closure, you can use trailing closure syntax.
- Swift automatically provides shorthand parameter names like `$0` and `$1`, but not everyone uses them.
- If you use external values inside your closures, they will be captured so the closure can refer to them later.

### Day 8 - Structs, part one

- Swift lets you design your own types in two ways, of which the most common are called structures, or just structs. Structs can be given their own variables and constants, and their own functions, then created and used however you want.
- Constants cannot be computed properties.
- You can also use `willSet` to take action before a property changes, but that is rarely used.
- What we want to happen is for Swift to print a message every time `amount` changes, and we can use a `didSet` property observer for that. This will run some code every time `amount` changes:

  ```swift
  struct Progress {
      var task: String
      var amount: Int {
          didSet {
              print("\(task) is now \(amount)% complete")
          }
      }
  }

  var progress = Progress(task: "Loading data", amount: 0)
  progress.amount = 30
  progress.amount = 80
  progress.amount = 100
  ```

### Day 9 - Structs, part two

- You can create your own types using structures, which can have their own properties and methods.
- You can use stored properties or use computed properties to calculate values on the fly.
- If you want to change a property inside a method, you must mark it as `mutating`.
- Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
- Use the `self` constant to refer to the current instance of a struct inside a method.
- The `lazy` keyword tells Swift to create properties only when they are first used.
- You can share properties and methods across all instances of a struct using the `static` keyword.
- Access control lets you restrict what code can use properties and methods.

### Day 10 - Classes and inheritance

- Classes and structs are similar, in that they can both let you create your own types with properties and methods.
- One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
- You can mark a class with the `final` keyword, which stops other classes from inheriting from it.
- Method overriding lets a child class replace a method in its parent class with a new implementation.
- When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
- Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
- Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.

### Day 11 - Protocols and extensions

- Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
- You can build protocols on top of other protocols, similar to classes.
- Extensions let you add methods and computed properties to specific types such as `Int`.
- Protocol extensions let you add methods and computed properties to protocols.
- Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.

### Day 12 - Optionals, unwrapping, and typecasting

- Optionals let us represent the absence of a value in a clear and unambiguous way.
- Swift won’t let us use optionals without unwrapping them, either using `if let` or using `guard let`.
- You can force unwrap optionals with an exclamation mark, but if you try to force unwrap `nil` your code will crash.
- Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
- You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
- Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
- You can use `try?` to convert a throwing function into an optional return value, or `try!` to crash if an error is thrown.
- If you need your initializer to fail when it’s given bad input, use `init?()` to make a failable initializer.
- You can use typecasting to convert one type of object to another.

### Day 13 - Swift review, day one

- Variables and constants `var` and `let`
- Types of Data: `Int`, `String`, `Double`, `Bool`
- Operators: `+`, `-`, `*`, `+=`, `-=`, `>`, `<`, `>=`, `<=`, `==`, `!=`, `&&`, `||`
- String interpolation: `\()`
- Arrays: `[,]`, `[String]`, `[Bool]()`
- Dictionaries: `[key:value,key:value]`
- Conditional statements: `if`, `else` , `else if`
- Loops: `for in`, `while`
- Switch case: `switch/case/default`
