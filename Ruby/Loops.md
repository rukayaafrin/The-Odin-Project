### Explain what a `loop` loop is and how to use it.
 - infinite loop
 - needs a `break` to exit
 - use a better loop if possible

Syntax check:
```ruby
i = 0
loop do
    puts "i is #{i}"
    i += 1
    break if i > 5
 end
 ```

### Explain what a `while` loop is and how to use it.
- condition to break loop is declared up front

Syntax check:
```ruby
i = 0
while i < 5
    puts "i is #{i}"
    i += 1
end
```
### Explain what an `until` loop is and how to use it.
- opposite of `while`

Syntax check:
```ruby
i = 0
until i > 5
    puts "i is #{i}"
    i += 1
end
```

### Explain what a `for` loop is and how to use it.
 (quick note: similar to python's range and for loop, minus the range keyword)

Syntax check:
```ruby
for i in 0..5
    puts "i is #{i}"
end
```

### Explain what a `#times` loop is and how to use it.
- run a loop a specified number of times

Syntax check:
```ruby
5.times do |i|
    puts "Hello, world! #{i}"
end
```

### Explain what `#upto` and `#downto` loops are and how to use them.
- `upto` goes up from a number
- `downto` goes down from a number

Syntax check:
```ruby
5.downto(1) { |i| puts "Counting down: #{i}" } # 5, 4, 3, 2, 1
5.upto(10) { |i| puts "Counting up: #{i}" } # 5, 6, 7, 8, 9, 10
```

Explain what `#each` is and how to use it.
- iterate over a collection

Syntax check:
```ruby
(1..5).each { |i| puts "i is #{i}" } # 1, 2, 3, 4, 5
```

### Explain what `#each_with_index` is and how to use it.
- iterate over a collection with index

Syntax check:
```ruby
fruits = ["apple", "banana", "cherry"]
fruits.each_with_index { |fruit, index| puts "#{fruit} is at index #{index}" }
# apple is at index 0
# banana is at index 1
# cherry is at index 2
``` 
