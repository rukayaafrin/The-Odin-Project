## List the basic arithmetic operators and what they do.

- `+` addition
- `-` subtraction
- `*` multiplication
- `/` division
- `%` modulus
- `**` exponent

## Describe the difference between an integer and a float and how to convert between the two.

### Integers and Floats

- `17 / 5`    #=> 3, not 3.4
- `17 / 5.0`  #=> 3.4

### To convert an integer to a float:

- `13.to_f`   #=> 13.0

### To convert a float to an integer:

- `13.0.to_i` #=> 13
- `13.9.to_i` #=> 13

### Useful number methods

- `13.even?` #=> true
- `13.odd?`  #=> false

## Explain string interpolation and concatenation.

### Double and single quotation marks

- Double quotation marks allow for string interpolation.
- Single quotation marks do not allow for string interpolation.

Examples:

- `"Welcome " + "to " + "Odin!"`    #=> "Welcome to Odin!"
- `"Welcome " << "to " << "Odin!"`  #=> "Welcome to Odin!" (shovel operator)
- `"Welcome ".concat("to ").concat("Odin!")`  #=> "Welcome to Odin!"

### Substrings

- `"hello"[0]`    #=> "h"
- `"hello"[0..1]` #=> "he"
- `"hello"[0, 4]` #=> "hell"
- `"hello"[-1]`   #=> "o"

### Describe what escape characters are, and list several examples.

- `\\`  #=> Need a backslash in your string?
- `\b`  #=> Backspace
- `\r`  #=> Carriage return, for those of you that love typewriters
- `\n`  #=> Newline. You'll likely use this one the most.
- `\s`  #=> Space
- `\t`  #=> Tab
- `\"`  #=> Double quotation mark
- `\'`  #=> Single quotation mark

### Interpolation

- `"hello #{name}"` #=> "hello Steve"

### Common string methods

- `.capitalize`
  - `"hello".capitalize` #=> "Hello"

- `.include?`
  - `"hello".include?("lo")`  #=> true
  - `"hello".include?("z")`   #=> false

- `.upcase`
  - `"hello".upcase` #=> "HELLO"

- `.downcase`
  - `"hello".downcase` #=> "hello"

- `.empty?`
  - `"hello".empty?`  #=> false
  - `"".empty?`       #=> true

- `.length`
  - `"hello".length` #=> 5

- `.reverse`
  - `"hello".reverse` #=> "olleh"

- `.split`
  - `"hello world".split`  #=> ["hello", "world"]
  - `"hello".split("")`    #=> ["h", "e", "l", "l", "o"]
  - `"hello".split("l")`   #=> ["he", "o"]
  - `"hello".split("lo")`  #=> ["he", ""]

- `.strip`
  - `" hello, world   ".strip`  #=> "hello, world"

- `.sub`
  - `"he77o".sub("7", "l")`  #=> "hel7o"

- `.gsub`
  - `"he77o".gsub("7", "l")` #=> "hello"

- `.insert`
  - `"hello".insert(-1, " dude")` #=> "hello dude"

#### String conversion

- `.to_s`
  - `35.to_s` #=> "35"
  - `nil.to_s` #=> ""
  - `:symbol.to_s` #=> "symbol"

### Define what a symbol is and how it differs from a string.

- Symbols are immutable strings.
- Symbols are unique.
- Symbols are used as hash keys.

#### Create a symbol

- `:my_symbol`
- `"my_symbol".to_sym`

Use `.object_id` to get identifier in memory:

- `"string"` == `"string"`  #=> true
- `"string".object_id == "string".object_id`  #=> false
- `:symbol.object_id == :symbol.object_id`    #=> true

### Explain what the Booleans true, false, and nil represent.

- `true`
- `false`
- `nil`

### Difference between print and puts

- `print` prints to the console without a newline.
- `puts` prints to the console with a newline.
- `putc` prints the first character of the string to the console.
  - `putc 65`  # Outputs: A (since 65 is the ASCII value for 'A')

### How to get user input

- `gets`
- `gets.chomp`

#### What's the difference between `gets` and `gets.chomp`?

- `gets` returns a string with a newline at the end.
- `gets.chomp` returns a string without a newline at the end.

### List of falsy values in Ruby

- `false`
- `nil`
(this is NOT JS!!!! 0, and "" are not considered falsy)

### Explain how to use `if`, `elsif`, and `else` statements.

- `if`
  ```ruby
  if 1 < 2
    puts "1 is less than 2"
  end 
  ```

- `elsif` and `else`
  ```ruby
  if attack_by_land == true
    puts "release the goat"
  elsif attack_by_sea == true
    puts "release the shark"
  else
    puts "release Kevin the octopus"
  end
  ```

### Special conditionals

- `unless`  (opposite of if)
  ```ruby
  unless 1 < 2
    puts "1 is less than 2"
  end 
  ```

- `case`
  ```ruby
  grade = 'F'
  did_i_pass = case grade
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
  end
  ```

### Describe what `||`, `&&`, and `!` do.

- `||` (or)
- `&&` (and)
- `!` (not)

Quick syntax:
```ruby
if 10 < 2 || 5 < 6 #=> although the left expression is false, there is a party at Kevin's because the right expression returns true
  puts "Party at Kevin's!"
end

# This can also be written as
if 10 < 2 or 5 < 6
  puts "Party at Kevin's!"
end

puts !(10 < 5) #=> true
```

### How to check for equality of value type and actual value

- `eql?`
  ```ruby
  5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
  5.eql?(5)   #=> true
  ```
### How to check if two variables point to the same object in memory?
- `equal?`
  - for numbers
  ```ruby
  a = 5
  b = 5
  a.equal?(b) #=> true
  ```
  - for strings
  ```ruby
  a = "hello"
  b = "hello"
  a.equal?(b) #=> false
  ```

### Spaceship operator

- `<=>`
  - returns 0 if value on left is equal to value on right
  - returns 1 if value on left is greater than value on right
  - returns -1 if value on left is less than value on right

    ```ruby
    5 <=> 10    #=> -1
    10 <=> 5     #=> 1
    5 <=> 5     #=> 0
    ```

### Explain what short circuit evaluation is.
  - use && and || to prevent unnecessary evaluation of expressions
  ```ruby
    def check
    puts "This won't be printed"
    false
  end

  true || check  # "This won't be printed" is not executed
  ```

### Ternary operator syntax

- `condition ? true_expression : false_expression`
