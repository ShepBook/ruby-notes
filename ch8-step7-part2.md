##Blocks

Blocks are delimited by either ```do``` or ```end``` or curly brakets ```{…}```.

Blocks can be thought of as "nameless methods".

Blocks can be complicated, but are normally used to iterate over items or to do something a certain number of times.

For example:

```
3.times do |i|
  puts( i )
end
```

This outputs

```
0
1
2
```

The reason this is output like this is because the ```.times``` method is a method of the fixnum class and it starts at 0 and increments up from there, three times.

Another way of writing this would be

```
3.times { |i|
  puts( i )
}
```

