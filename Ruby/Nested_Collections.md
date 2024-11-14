# Nested Collections

## What is a nested array or hash?

- Array of arrays 
```ruby
teacher_mailboxes = [ 
  ["Adams", "Baker", "Clark", "Davis"], #x=0
  ["Jones", "Lewis", "Lopez", "Moore"], #x=1
  ["Perez", "Scott", "Smith", "Young"]  #x=2
]
```
### How to access element in nested array?
`<arrayname>[x][y]`
```ruby
teacher_mailboxes[0][0] #Adams
teacher_mailboxes[1][1] #Lewis

#Use negative indices as usual to access element at end of array

teacher_mailboxes[0][-1] #Davis

#NoMethodError vs returning nil

teacher_mailboxes[3][0] # there is no 4th row
#=> NoMethodError: trying to access nonexistent nested element

teacher_mailboxes[0][4] 
#=> nil because trying to access nonexistent index in an array

```

### How to create a nested array?
    1. `Array.new(row,column)`
    2. `nestedArray[row][column]`

#### Immutability of the above

```ruby
mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]

```
To create an immutable array of mutable objects (string, array, hash, etc), you will need to pass the default value for Array.new via a block, using curly braces, instead of the second optional argument. 

The code in the block gets evaluated for every slot in the array, creating multiple objects to initialize the array with, rather than references to the same object.

```ruby
immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]

```
### How do you add or remove elements?

1. `push` or `<<`

```ruby
test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]
test_scores << [100,99,98,97]
test_scores #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

test_scores[0].push(100) #=> [97,76,79,93,100]
```

2. `pop` 
```ruby
test_scores = [
  [97,76,79,93,100], #line 75
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]
test_scores << [100,99,98,97]
test_scores #=> [[97,76,79,93,100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

test_scores.pop #=> [100, 99, 98, 97]
test_scores[0].pop #=> 100
```

### How to iterate over a nested array?

1. `each_with_index`

```ruby
teacher_mailboxes = [ 
  ["Adams", "Baker", "Clark", "Davis"], #x=0
  ["Jones", "Lewis", "Lopez", "Moore"], #x=1
  ["Perez", "Scott", "Smith", "Young"]  #x=2
]

teacher_mailboxes.each_with_index do |row, row_index|
  puts "Row:#{row_index} = #{row}"
end
#=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
#=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
#=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]

#How to iterate to access the individual elements?

teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
  end
end
#=> Row:0 Column:0 = Adams
#=> Row:0 Column:1 = Baker
#=> Row:0 Column:2 = Clark
#=> Row:0 Column:3 = Davis
#=> Row:1 Column:0 = Jones
#=> Row:1 Column:1 = Lewis
#=> Row:1 Column:2 = Lopez
#=> Row:1 Column:3 = Moore
#=> Row:2 Column:0 = Perez
#=> Row:2 Column:1 = Scott
#=> Row:2 Column:2 = Smith
#=> Row:2 Column:3 = Young
#=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]


```

2. `flatten`

```ruby
teacher_mailboxes.flatten.each do |teacher|
    puts "#{teacher} is amazing"
end
```

### How to use predicate enumerables with nested array?

```ruby
test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

test_scores.any? do |scores|
  scores.all? { |score| score > 80 }
end
#=> false

test_scores.all? do |scores| # in each of the rows
  scores.any? { |score| score > 80 } #any score above 80
end
#=> true

```

### What are nested hashes?

```ruby
vehicles = {
    alice:{year:2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
}
```

### How to access data in nested hash?

`hash[:x][:y]`
```ruby
vehicles = {
    alice:{year:2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
}
vehicles[:blake][:make] #=> Volkswagen
```

### How to add or remove data in nested hashes

```ruby
vehicles[:dave] = {year:2021, make: "Ford", model: "Escape"}
#hash[:key] = {values}

#update a value
vehicle[:dave][:color] = "red"
vehicle[:dave] #=> {year:2021, make: "Ford", model: "Escape", color: "red"}

#delete via key
vehicles.delete(:blake)

#delete via value
vehicles[:dave].delete(:color)
```

### `select` in nested hashes

```ruby
vehicles = {
    alice:{year:2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
}

vehicles.select {|name,data| data[:year] >=2020}
#all vehicles made after 2020

#{:blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}} 
```

### `collect` in nested hashes

Only want the keys of the hash in a flat hash

```ruby
vehicles.collect { |name, data| name if data[:year] >= 2020 }
#=> [nil, :blake, :caleb]

```
### `compact` in nested hashes is chained at the end
returns an array or hash without nil values

```ruby
vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
#=> [:blake, :caleb]

```

### `filter_map` in nested hashes 

```ruby
vehicles.filter_map { |name, data| name if data[:year] < 2020 }
#=> [:alice]
```


## Explain `dig` method

Returns nil when trying to access a nonexistent key in an existing nested hash or way

```ruby

teacher_mailboxes.dig(3, 0)
#=> nil
teacher_mailboxes.dig(0, 4)
#=> nil


vehicles[:zoe][:year]
#=> NoMethodError
vehicles.dig(:zoe, :year)
#=> nil
vehicles[:alice][:color]
#=> nil
vehicles.dig(:alice, :color)
#=> nil

```