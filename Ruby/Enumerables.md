## Enumerables

- `each` and `each_with_index`
- `map`
- `select`
- `reduce`



### using `select` aka `filter`
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.select { |friend| friend != 'Brian' }
#=> ["Sharon", "Leo", "Leila", "Arun"]

#OR
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.reject { |friend| friend == 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

```

### using `each`
```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

#single-line block use {...}
friends.each { |friend| puts "Hello, " + friend }

#=> Hello, Sharon
#=> Hello, Leo
#=> Hello, Leila
#=> Hello, Brian
#=> Hello, Arun

#=> ["Sharon", "Leo", "Leila", "Brian" "Arun"]

```
####  Difference between do...end and {...}

```ruby
my_array = [1, 2]

#multi-line block use do...end
my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

#=> The new number is 2.
#=> The new number is 4.

#=> [1, 2]

```

### `each` with hash
# each returns the original array or hash regardless of what happens inside the code block.
```ruby
my_hash = { "one" => 1, "two" => 2 }

my_hash.each { |key, value| puts "#{key} is #{value}" }

#=> one is 1
#=> two is 2
#=> { "one" => 1, "two" => 2} -> original hash


my_hash.each { |pair| puts "the pair is #{pair}" }

#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.each { |friend| friend.upcase }

#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun'] -> original array


```

### `each_with_index`
```ruby
fruits = ['apple', 'banana', 'pear']

fruits.each_with_index { |fruit, index| puts fruit if index.even? }

#=> apple
#=> pear
#=> ['apple', 'banana', 'pear'] -> original array
```
### `map` aka `collect` : new array returned

```ruby
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }

#=> ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"] -> new array
```

#### using `select` with hash
```ruby
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}

```

### `reduce` aka `inject`

```ruby
numbers = [1, 2, 3, 4, 5]
numbers.reduce { |sum, number| sum + number }
#=> 15



votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}

```

### Predicate Enumerables

#### `include?`

```ruby
numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true

numbers.include?(3)
#=> false
```


#### `any?`

```ruby
numbers = [21, 42, 303, 499, 550, 811]

numbers.any? { |number| number > 500 }
#=> true

numbers.any? { |number| number < 20 }
#=> false

```



#### `all?`

```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.all? { |fruit| fruit.length > 3 }
#=> true

fruits.all? { |fruit| fruit.length > 6 }
#=> false

```


#### `none?`

```ruby
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.none? { |fruit| fruit.length > 10 }
#=> true

fruits.none? { |fruit| fruit.length > 6 }
#=> false

```

#### `one?`

Exactly one element returns `true` with `one?` method

```ruby
["a"].one?
# true

[].one?
# false

[nil].one?
# false
```