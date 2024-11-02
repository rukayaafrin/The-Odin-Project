## What are the eight data types in JavaScript?
- `Number`
- `BigInt`
- `String`
- `Boolean`
- `Null`
- `Undefined`
- `Symbol`
- `Object`

## Which data type is NOT primitive?
- `Object`

## What is the relationship between null and undefined?
- `null` represents the intentional absence of any value
- `undefined` means a variable has been declared but has not been initialized
- Both are considered `falsy` values 
- `null == undefined` is true, loosely equal
- `null === undefined` is false, strictly unequal

## What is the difference between single, double, and backtick quotes for strings?
- Single (') and double quotes (") are essentially the same in JavaScript and are used to define string literals.
Example:
```js
console.log("It's Jane's World!");
console.log('Hello, world!');
```
- Backticks (``) allow for template literals, which support multi-line strings and variable interpolation using `${}` syntax.
Example:
```js
console.log(`Hello, ${name}!`);
```

## What is the term for joining strings together?
- `concatenation`

## Which type of quote lets you embed variables/expressions in a string?
- Backticks (``)

## How do you embed variables/expressions in a string?
- Using `${}` syntax

## How do you use escape characters in a string?
- Use a backslash (`\`) before the character you want to escape. For example:
- `\'` for a single quote
- `\"` for a double quote
- `\\` for a backslash
- `\n` for a new line
- `\t` for a tab
Example:
```js
console.log("This is a single quote: \'");
console.log("This is a double quote: \"");
console.log("This is a tab: \t");
console.log("This is a backslash: \\");
console.log("This is a new line: \n");
```

## What is the difference between the slice/substring string methods?
- `slice(start, end)` extracts a part of a string between **start and end (not including end)**, and **can take negative indices** to start from the end.
Example:
```js
console.log("Hello, world!".slice(0, 5)); // "Hello"
console.log("Hello, world!".slice(-6)); // "world!"
```
- `substring(start, end)` extracts a part of a string between **start and end (not including end)**, and **does not take negative indices**.
Example:
```js
console.log("Hello, world!".substring(0, 5)); // "Hello"
```

## What are the three logical operators, and what do they stand for?
- `&&` (AND): returns true if both operands are true.
- `||` (OR): returns true if at least one operand is true.
- `!` (NOT): returns the opposite boolean value of its operand.

## What are the comparison operators?
- `==` (equal): checks for value equality only
- `===` (strictly equal): checks for value and type equality
- `!=` (not equal): checks for value inequality
- `!==` (strictly not equal): checks for value and type inequality
- `>` (greater than)
- `<` (less than)
- `>=` (greater than or equal to)
- `<=` (less than or equal to)

## What are truthy and falsy values?
- False values are:
  - `false`
  - `0`
  - `""` (empty string)
  - `null`
  - `undefined`
  - `NaN`
- Everything else is truthy.

## What are conditionals?
- `if/else` statements
- `switch` statements
- `ternary` operators

## What is the syntax for an `if/else` conditional?
```js
if (condition) {
  // code to execute if condition is true
} else {
  // code to execute if condition is false
}
```

## What is the syntax for a `switch` statement?
```js
switch (expression) {
  case value1:
    // code to execute if expression matches value1
    break;
  // ...
}
```

## What is the syntax for a `ternary` operator?
`condition ? expression1 : expression2`
```js
console.log(x > 0 ? "x is positive" : "x is not positive");
```

## What is nesting?
- Nesting is when you use a conditional inside another conditional.
- can also apply to loops, functions, and other code blocks.
- Example:
```js
if (x > 0) {
  if (y > 0) {
    console.log("Both x and y are positive");
  }
}
```