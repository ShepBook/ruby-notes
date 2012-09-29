##Loops and Iterators

Ruby's ```for``` loops are more like ```for each``` operations in other programming languages. In fact, the ```for``` loop in Ruby is often called "syntax sugar" for the ```each``` method.

To iterate over each item in a collection of items, you would do something like:

```
[1,2,3].each do |i|
  puts( i )
end
```

This takes each element in the array and passes it to the iterator block (The part after "do") using the iterator parameter "i". The "i" part between the pipes ( | | ) is kinda like a variable that's passed to the block for things to be done on it.

In this example, each element of the array would be printed out, like

```
1
2
3
```

**while loops**

Basic syntax:

```
while <test is true> do
  <run some code>
end
```

Here is an example:

```
$hours_asleep = 0

def tired
  if $hours_asleep >=8 then
    $hours_asleep = 0
    return false
  else
    $hours_asleep += 1
    return true
  end
end

def snore
  puts('snore…')
end

def sleep
  puts("z" * $hours_asleep)
end
```

Then, you could do the following…

```
while tired do sleep
end
puts("I'm wide away and ready to face the day!")
```

or

```
while tired do      ##### do is optional here.
  sleep
end
puts("I'm wide away and ready to face the day!")
```

or

```
sleep while tired
puts("I'm wide away and ready to face the day!")
```

**Until loops**

Until loops are kinda like "while not" loops.

These are the same:

```
puts( "starting not while loop" )
i = 0

while i != 10
  print("#{i} ")
  i += 1
end

puts( "\nnot while look ended" )
```

```
puts( "starting unitl loop" )
i = 0

until i == 10
  print("#{i} ")
  i += 1
end

puts( "\nuntil loop ended" )
```