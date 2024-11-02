## What are functions useful for?
- Functions are reusable blocks of code that perform a specific task.
- They help break down complex problems into smaller, more manageable pieces.

## How do you invoke a function?
```js
function functionName() {
  // code to execute
}
functionName();
```

## What are anonymous functions?
- Anonymous functions are functions without a name.
```js
function() {
 console.log("Hello, world!");
}

//arrow function
textBox.addEventListener("keydown", (event) => {
  console.log(`You pressed "${event.key}".`);
});

const originals = [1, 2, 3];
const doubled = originals.map(item => item * 2);

```
## What is function scope?
- Function scope is the context in which a function is executed.
- Variables declared inside a function are only accessible within that function.
```js
function sayHi(name) {
  let phrase = `Hello, ${name}`;
  console.log(phrase);
}
//phrase is not accessible outside of the function
```

## What are return values?
- Return values are the values that a function returns.
```js
function add(a, b) {
  return a + b;
}
```

## What are arrow functions?
- Arrow functions are a more concise way to write functions.
```js
const square = (x) => x * x;
```

## What is the difference between a function declaration and a function expression?
- Function declarations are hoisted, meaning they can be called before they are declared in the code.
- Function expressions are not hoisted, meaning they cannot be called before they are declared in the code.
```js
sayHi("John"); // Hello, John

function sayHi(name) {
  console.log( `Hello, ${name}` );
}

/*****************************************************/
sayHi("John"); // error!
//sayHi is a variable that is assigned an anonymous function
// calling sayHi before declaration places it in the Temporal Dead Zone
let sayHi = function(name) {  // (*) no magic any more
  console.log( `Hello, ${name}` );
};
```