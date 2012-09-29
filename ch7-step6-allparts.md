##Hashes

Hashes are like a dictionary.

key => value

Look something up by using the syntax ```hashname[key]```

Example code:

```
myhash = {
  "cat" => "a small, furry animal that catches mice",
  "dog" => "a friendlier relative of the world that goes 'woof!'",
  "mouse" => "a creature that squeakes and hides from cats"
  }

p( myhash["cat"] )
```

**What's happening here?**

```myhash``` is the variable we are storing the hash in. We delimit the hash with the curly brackets like ```{}``` and things are separated by commas. The hashes are of a key-value store style. That is, they consist of a "key" and that key's corresponding "value". We indicate which key belongs to which value by using the ```=>``` set of characters.

So, in the first line of that hash, ```"cat"``` is the key for ```"a small, furry animal that catches mice"```. This syntax is repeated for each piece in the hash. Each piece is separated by commas.

We use ```p``` to inspect the hash with ```p( myhash["cat"] )```. ```p``` is better for testing things, as it will show a ```nil``` value if the object is empty. ```puts``` or ```print``` will not.

If you put in an "index" for a key that doesn't exist, like, if you did

```
p( myhash["bear"] )
```

it would return ```nil``` since there is no key matching that and nothing to return.

**Changing the value stored for a key**

You can change something using the syntax like:

```
myhash["cat"] = "a nasty dragon."
```

This will change the value stored for the key "cat".

**Default Value**

When you create a hash, you can define a default value. If no default value is specified, it uses the default of ```nil```.

To define a new default value, pass the default value you would like to use as an argument to the ```.new``` method, like so.

```
h1 = Hash.new("No value to key requested.")
```

You can ask for the default value with the ```default``` method, like:

```
p( h1.default )
```

You can also change the default method by giving it a new assignment, like:

```
h1.default = 'a new default value'
```

**Hash Operation**

Hashes have the methods ```keys``` and ```values``` which return arrays containing the keys or values. You can then operate on them like any normal array. For example, given:

```
h1 = {
      'key1' => 'val1',
      'key2' => 'val2',
      'key3' => 'val3',
      'key4' => 'val4'
     }

h2 = {
      'key1'   => 'val1',
      'KEY_TWO => 'val2',
      'key3'   => 'VALUE_3',
      'key4'   => 'val4'
     }
```

You could ask for the keys or values and do things with them.

For example:

```
##### Find where the keys intersect
p( h1.keys & h2.keys )# Finds where the keys intersect
$=> ["key1", "key3", "key4"]

##### Find where the values intersect.
p( h1.values & h2.values )# Finds where the values intersect.
$=> ["val1", "val2", "val4"]

##### concatenate the arrays of keys.
p( h1.keys + h2.keys )
$=> ["key1", "key2", "key3", "key4", "key1", "key3", "key4", "KEY_TWO"]

##### Find the difference
p( h1.values - h2.values )
$=> ["val3"]

##### Append the keys together
p( (h1.keys << h2.keys) )
$=> ["key1", "key2", "key3", "key4", ["key1", "key3", "key4", "KEY_TWO"]]

##### Un-nest the arrays and reverse
p( (h1.keys << h2.keys ).flatten.reverse )
$=> ["KEY_TWO", "key4", "key3", "key1", "key4", "key3", "key2", "key1"]
```

