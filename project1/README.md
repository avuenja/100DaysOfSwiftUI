# Project 1 (WeSplit)

![WeSplit](https://pbs.twimg.com/media/E5FYbK1XMAMDARp?format=jpg&name=medium)

### Day 16 - Project 1, part one

- WeSplit App: Introduction
- Understanding the basic structure of a SwiftUI app
- Creating a form: `Form` have a limit of 10 children, although we cat create a groups `Group` or sections `Section` for add more child in the form.
- Adding a navigation bar: Envolve the content with `NavigationView {}`, and add after the content code `.navigationBarTitle("Title")`, also is possible add a `displayMode: .inline` like second parameter in the `navigationNarTitle`.
- Modifying program state: For us to modify a value in SwiftUi we can use `@State` keyword, and also, we always add `private` keyword (Apple's recommendation).
- Binding state to user interface controls: For two-way binding we use `$` before de variable name. e.g.: `$name` for `@State private name = ""`
- Creating views in a loop: Use `ForEach`, for dynamically content use trailing syntax and access the currently item with `$0`, thus, we have two-way binding too.

### Day 17 - Project 1, part two

- Reading text from the user with TextField `Form`, `Section`
- Creating pickers in a form `Picker`
- Adding a segmented control for tip percentages `Section(header: Text("")) {}`, `Picker` with `SegmentedPickerStyle()`
- Calculating the total per person

### Day 18 - Project 1, part the

- WeSplit: Wrap Up
