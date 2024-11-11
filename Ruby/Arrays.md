### Describe two different ways of creating a new array.
- Array literal
    - empty = `[]`
    - numbers = `[1, 2, 3]`
    - strings = `["apple", "banana", "cherry"]`
    - mixed = `[1, "apple", 3.14]`
- `Array.new`
    - `Array.new` #=> []
    - `Array.new(3)` #=> [nil, nil, nil]
    - `Array.new(3, 7)` #=> [7, 7, 7]
    - `Array.new(3, true)` #=> [true, true, true]

### Explain how to access array elements using different methods.
- `[]`
    ```ruby
    str_array = ["This", "is", "a", "small", "array"]
    str_array[0] #=> "This"
    str_array[1] #=> "is"
    str_array[4] #=> "array"
    str_array[-1] #=> "array"
    str_array[-2] #=> "small"
    ```
- `at`
    ```ruby
    str_array.at(0) #=> "This"
    str_array.at(1) #=> "is"
    str_array.at(4) #=> "array"
    ```
- `first`
    ```ruby
    str_array.first #=> "This"
    #take in an argument
    str_array.first(2) #=> ["This", "is"]
    ``` 
- `last`
    ```ruby
    str_array.last #=> "array"
    #take in an argument
    str_array.last(2) #=> ["small", "array"]
    ```

### Explain three different ways to add data to an array.
- `<<` : append to the end of the array
    ```ruby
    str_array << "new" #=> ["This", "is", "a", "small", "array", "new"]
    ``` 
- `push` : append to the end of the array
    ```ruby
    str_array.push("new") #=> ["This", "is", "a", "small", "array", "new"]
    ```
- `unshift` : add to the beginning of the array
    ```ruby
    str_array.unshift("new") #=> ["new", "This", "is", "a", "small", "array"]
    ```

### Explain how to remove elements from an array.
- `pop` : remove the last element of the array and return it
    ```ruby
    str_array.pop #=> "new"
    ```
- `shift` : remove the first element of the array and return it
    ```ruby
    str_array.shift #=> "This"
    ```
### Adding and Subtracting Arrays
- `+` : concatenate two arrays, returns a new array with the elements of both arrays
    ```ruby
    array1 = [1, "apple", 3.14]
    array2 = ["banana", 42]
    result = array1 + array2
    # result => [1, "apple", 3.14, "banana", 42]
    ```
- `-` : subtract one array from another, returns a new array with the elements that are not in the second array
    ```ruby
    array1 = [1, "apple", 3.14, "banana", 42]
    array2 = ["banana", 42]
    result = array1 - array2
    # result => [1, "apple", 3.14]
    ```
### `methods`
`num_array.methods`: list all methods available for the array

#### Common Methods
```ruby
[].empty?               #=> true
[[]].empty?             #=> false
[1, 2].empty?           #=> false

[1, 2, 3].length        #=> 3

[1, 2, 3].reverse       #=> [3, 2, 1]

[1, 2, 3].include?(3)   #=> true
[1, 2, 3].include?("3") #=> false

[1, 2, 3].join          #=> "123"
[1, 2, 3].join("-")     #=> "1-2-3"

[1,2,3].clear           #=> []

[1,2,3].insert(1, "inserted") #=> [1, "inserted", 2, 3]

[1,2,3].sample           #=> 2 (randomly selects an element from the array)

[1,2,3].shuffle          #=> [2, 3, 1] (randomly shuffles the elements of the array)

[1,2,3,4,2,3].uniq       #=> [1, 2, 3, 4] (removes duplicate elements from the array), non-destructive: returns a new array

[1,2,3,4,2,3].uniq!      #=> [1, 2, 3, 4] (destructive), modifies the original array in place

[1,2,3,4].fetch(1)        #=> 2 (returns the element at the specified index)
[1,2,3,4].fetch(10, "oops") #=> "oops" (returns the default value if the index is out of bounds)

[1,2,3,4].join("-")      #=> "1-2-3-4"
```


