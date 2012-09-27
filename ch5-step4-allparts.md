##Attribute Readers and Writers

**First, a word about Symbols**

A "Symbol" is a name preceeded by a colon, like ```:description```

**attr_accessor**

The ```attr_accessor``` method is used to create a readable and writable instance variable.

Rather than do…

```
def set_name( aName )
  @name = aName
end

def get_name
  return @name
end
```

We can just do…

```
attr_accessor :name
```

At the beginning of the class. This works great, as long as it isn't part of any method inside the class. This will automatically create set and get accessors for, as well as an instance variable, by the same name as the symbol.

**attr_reader and attr_writer**

```attr_accessor``` creates the same thing as creating both of these reader and writer methods. You should only need to use a specific reader or writer method if you need to limit reading or writing.

**Setting up multiple attributes at once**

In order to setup mulitple attributes at once, you just comma separate them, like:

```
attr_accessor(:name, :description, :title)
```

Of course, you can do the same for ```attr_reader``` and ```attr_writer```. Parenthesis are also completely optional.

**Class Variables**

A class variable starts with ```@@```. A class variable is accessible to all objects that share the same class. So, in the code example ```@@num_things = 0``` creates the ```@@num_things``` class variable and sets it to be 0 at the start of the program. The ```@@num_things``` class variable will be accessible to all objects of the Thing class.

The ```@@num_things +=1``` line adds 1 to the value stored in the num_things class variable. It does this each time a Thing object is initialized. (That line is in the ```initialize``` function of the Thing class.)