<Similar to obj in JS and dict in Python>

### How to create a hash
```ruby
my_hash={
    "name" => "John",
    "age" => 30,
    "city" => "New York"
}

my_hash = Hash.new #=> {}
```

### How to access a value in a hash
```ruby
shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

shoes["summer"]   #=> "sandals"
# not recommended
shoes["hiking"]   #=> nil
# recommended
shoes.fetch("hiking")   #=> KeyError: key not found: "hiking"

#add a default value
shoes.fetch("hiking", "hiking boots")   #=> "hiking boots"


```
### How to add a key-value pair to a hash
```ruby
shoes["fall"] = "sneakers"

shoes     #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

#Update a value
shoes["summer"] = "flip-flops"
shoes     #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}
```

### How to remove a key-value pair from a hash
```ruby
shoes.delete("summer")    #=> "flip-flops"
shoes     #=> {"winter"=>"boots", "fall"=>"sneakers"}
```

### How to iterate over a hash
```ruby
shoes.each do |key, value|
  puts "Key: #{key}, Value: #{value}"
end
# Key: summer, Value: sandals
# Key: winter, Value: boots
# Key: fall, Value: sneakers
```

### How to check if a hash has a key / value
```ruby
shoes.has_key?("summer")   #=> true
shoes.has_value?("sandals") #=> false
```

### How to get all the keys of a hash
```ruby
shoes.keys   #=> ["summer", "winter", "fall"]
```

### How to get all the values of a hash
```ruby
shoes.values   #=> ["sandals", "boots", "sneakers"]
```

### How to merge two hashes
```ruby
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }

```

### Symbols as keys
Symbols are more memory efficient than strings
```ruby

# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}

# 'Symbols' syntax, : instead of =>
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

#need to use :key to access the value no matter what syntax you used to create the hash

american_cars[:ford]    #=> "Mustang"
japanese_cars[:honda]   #=> "Accord"
```

### Convert hash to array
```ruby
hash.to_a
```
