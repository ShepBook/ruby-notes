##Array Indexing and Iterating

**Counting through elements**

Let's look at the array:

```
array = ['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']
```

Now, we can do stuff with this array.

```
print( array[0, 5] )
```

This tells Ruby to print out the stuff it finds in the array. It starts at index 0, which is the first number inside the square brackets. The second number in the square brackets tells Ruby how many elements of the array to print. So, starting at 0 (The first element in the array) Ruby counts 5 elements and outputs:

```
=> ["h", "e", "l", "l", "o"]
```

**Indexing backwards**

With Ruby, if you give it an index number for an array that is negative, it will index backward through the array. The last item in the array is at index ```-1```. So, if you did:

```
print( array[-5, 5] )
```

You would get

```
=> ["w", "o", "r", "l", "d"]
```

It starts at the end of the array and counts backward, starting at the end with -1. ```'w'``` is the array element at index -5. The second number in the array index tells Ruby to still count 5 elements, so we get the output above.

**Ranges in arrays**

You can specify a range by use ```..``` between two integers that specify where to go in the array. For example:

```
print( array[0..4] )
```

Will output

```
=> ["h", "e", "l", "l", "o"]
```

The ```[0..4]``` tells Ruby to start at the element it finds at index 0 and continue to the element it finds at index 4. (Remember, Arrays in Ruby are indexed starting at 0 for the first item. So 0 is the first one and 4 is the fifth one.)

Similarly, we can do this:

```
print( array[-5..-1] )
```

Which will output

```
=> ["w", "o", "r", "l", "d"]
```

This is because of the negative index referring from the end of the array. So, -5 is the fifth element from the end and -1 is the final element in the array.

**Remember**

A comma in the index reference indicates "count the number of positions" and an array says "start at the first point and continue to the second point indicated".

**Iterating over elements in an array**

Given this array

```
arr = [1,2,3,['a','b','c']]
```

We can iterate over the items in the array using a ```for``` loop, like:

```
for x in arr
  p( x )
end
```

Which outputs something like:

```
1
2
3
["a", "b", "c"]
```

**Let's break down that for loop**

```
for x in arr
```

This says that, each item in the ```arr``` array, we want to do something. We will call each item in ```arr``` by the name ```x``` when we are working with it in the for loop.

```
p( x )
```

is what the for loop is doing with each item in the array. Remember, we assigned each time in the array the name of ```x```, while we are working with it. So, this inspects and outputs the element in the array that ```x``` currently represents.

```
end
```

This tells the for loop that we are done with the current element it has. A for loop will continue through the array until it has no other elements left in the array, as seen in the output of the for loop.