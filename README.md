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
