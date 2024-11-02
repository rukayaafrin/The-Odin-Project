## Running JavaScript code using an HTML file 

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>

  <script>
    // Your JavaScript goes here!
    console.log("Hello, World!")
  </script>

</body>
</html>
```

## Name the three ways to declare a variable
- `let`
- `const`
- `var`

## Which of the three variable declarations should you avoid and why?
- `var`
- `var` allows you to redeclare variables and is not block-scoped, which can lead to unexpected behavior.
- `var` can be hoisted to top of scope and initialized as undefined

## What rules should you follow when naming variables?
- Use meaningful names
- Start with a lowercase letter
- Use camelCase
- Use descriptive names

## What happens when you add numbers and strings together?
- Coerces the number to a string and concatenates the strings.
- Type coercion in JS can be tricky:
```js
console.log(1 + "2" + "2"); // "122", string concatenation  
console.log(1 + +"2" + "2"); // "32", unary plus operator converts string to number
console.log(1 + -"1" + "2"); // "02", unary minus operator converts string to number
console.log(true + +"2"); // 3, unary plus operator converts string to number
console.log(+"2" + true); // 3 
```

## How does the Modulo (%), or Remainder, operator work?
- The modulo operator returns the remainder left over when one operand is divided by a second operand. It always takes the sign of the dividend.

## Explain the difference between `==` and `===`.
- `==` checks for value equality only
- `===` checks for value and type equality

## When would you receive a NaN result?
- When you try to perform arithmetic on a value that is not a number.

## What is `NaN===NaN`?
- `NaN` is not equal to `NaN`.

## What is the difference between `null` and `undefined`?
- `null` is an assignment value that represents no value or no object.
- `undefined` is a primitive value automatically assigned to variables that have not been assigned a value.

## How do you increment and decrement a number?
- Increment: `++`
- Decrement: `--`

## Explain the difference between prefixing and postfixing increment/decrement operators.
- Prefixing: `++x` or `--x` (increments/decrements before evaluating the expression)
  - Example:
  ```js
  let a = 1;
  console.log(++a); // 2
  ```
- Postfixing: `x++` or `x--` (increments/decrements after evaluating the expression)
  - Example:
  ```js
  let a = 1;
  console.log(a++); // 1
  // a is only two after the expression has been evaluated
  ```

## What is operator precedence and how is it handled in JS?
- Operator precedence determines the order in which operators are evaluated in expressions.
- JS follows a specific order to evaluate expressions:
  - Increment and decrement operators
  - Arithmetic operators
  - Comparison operators
  - Logical operators
  - Assignment operators

## What does unary plus operator do to string representations of integers? eg. +”10”
- Converts the string to a number.
- Example:
```js
console.log( +true ); // 1
console.log( +"" );   // 0
console.log( +1 );    // 1
```
