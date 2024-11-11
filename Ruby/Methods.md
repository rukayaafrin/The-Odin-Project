### Built in methods
- `Integer#upto` : instance method

### Explain how to create and call a new method.
- method name should be lowercase
- Uppercase is reserved for constants
```ruby
def my_name
  "Joe Smith"
end

puts my_name    #=> "Joe Smith"

```

### Explain how to pass variables to a method and how to define default parameters.

#### Default parameters
```ruby
def my_name(name="Joe Smith")
  name
end

puts my_name    #=> "Joe Smith"
puts my_name("Jane")    #=> "Jane"
```

#### Implicit return unless specified
```ruby
def my_name
  return "Joe Smith"
  "Jane Doe"
end

puts my_name #=> "Joe Smith"
```

### When to use explicit return
- error handling of input

```ruby
def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.
```

### Describe the differences between implicit return and explicit return.
- implicit return is the last evaluated expression in the method
- explicit return is when you use the `return` keyword


### Explain what it means to chain methods together and how to do it.
```ruby
phrase = ["be", "to", "not", "or", "be", "to"]

puts phrase.reverse.join(" ").capitalize
#=> "To be or not to be"

```

### Explain what predicate methods are and how to use one.
- end with a question mark
- return a boolean value
- can create your own predicate method

```ruby
puts 5.even?  #=> false
puts 6.even?  #=> true
puts 17.odd?  #=> true

puts 12.between?(10, 15)  #=> true

```

### Explain what bang methods are and how to use one.
- end with a bang `!`
- indicate that the method will modify the object it is called on
- destructive method

```ruby
phrase = ["be", "to", "not", "or", "be", "to"]

phrase.reverse!
puts phrase #=> ["to", "be", "or", "not", "to", "be"]
```

# Ruby Call Stack
- initially has one item -- the stack frame aka main method
- frame is created for each method invocation
- frame is destroyed when method is finished executing

