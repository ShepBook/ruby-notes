##Arrays

An **Array** is a sequential set of objects, like strings or numbers.

An array is simply enclosed with square brackets, like this:

```
array1 = [0.1,2]
```

Another way to create an array:

```
array2 = Array.new()
```

That will create an empty array.

If you'd like to create a array with empty "slots", you can specify the empty slots by passing in an integer as the argument for Array.new, like this.

```
array2 = Array.new(3)
```
This would create an array that looks like

```
=> [nil, nil, nil]
```

To fill the array slots with something other than ```nil```, just add it after the argument for the number of slots, like:

```
array2 = Array.new( 3, "Hello" )
```

Which creates something like:

```
=> ["Hello", "Hello", "Hello"]
```

**Mixed arrays**

Mixed arrays are completely legal in Ruby, so you can do something like:

```
array3 = [1, "hello", [1,2,3]]
```

As you can see, ```array3``` holds an integer, a string, and another array.

**Indexing arrays**

So, if you'd like to pull up an item in an array, you can use the indexing ability, like this:

```
p( array3[0] )
```

This inspects the array3 variable, and the ```[0]``` will tell it to look at the first item in the array. (Arrays are indexed by 0.)

That should output something like:

```
=> 1
```

**Invalid array index**

If you attempt to call an index on an array slot that does not exist, Ruby will return a ```nil``` value.

**Appending arrays**

You append an array using the ```<<``` method, like this.

```
p( array1 << array3 )
```

Which should output something like:

```
=> [0, 1, 2, [1, "hello", [1, 2, 3]]]
```

If you were to append array 1 to array 3, it would look like this:

```
p( array3 << array1 )
=> [1, "hello", [1, 2, 3], [0, 1, 2]]
```

So, you can see the difference there.