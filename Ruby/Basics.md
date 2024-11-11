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
