# 100 Days of SwiftUI

## Every day

- One hour per day (watching, reading or writing Swift)
- Tell people about your progress (twitter, instagram or anywhere platform)

### Day 1 - variables, simple data types, and string interpolation

- For to use variables in Swift, we using the `var` word, the variables are always mutable.
- Swift is a type-safe language, for `String` types we use double quotes (""), to involve a value. For values `Integer` we  pass directly the number or use `underscore` for separate the number.
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