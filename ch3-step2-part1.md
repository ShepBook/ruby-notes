##Ruby classes and objects

**Classes**

You can think of a class as a sort of blueprint from which objects are created.

**Two new classes**

```
class Dog
  def set_name( aName )
    @myname = aName
  end
  
  def get_name
    return @myname
  end
  
  def talk
    return 'woof!'
  end
end
```

```
class Cat
  def set_name( aName )
    @myname = aName
  end
  
  def get_name
    return @myname
  end
  
  def talk
    return 'miaow!'
  end
end
```

**What's happening above?**

Both classes have two identical methods.

```def set_name( aName )``` takes an argument "aName" and sets a local variable of ```@myname``` to the value passed in as an argument.

```def get_name``` returns the value stored in the ```@myname``` local variable.

They also both have a ```talk``` method, however, they return different values.

The local variables ```@some-name-goes-here``` are stored within each instance of a Dog or Cat object.

**Now, to create some pets**

You can create an instance of an object with the syntax of ```newobjectname = classNameHere.new```. Lets do that for Dogs and Cats.

```
mydog = Dog.new
yourdog = Dog.new
mycat = Cat.new
yourcat = Cat.new
someotherdog = Dog.new
```

Great! Now we have some pets. Let's name them.

```
mydog.set_name( 'Fido' )
yourdog.set_name( 'Bonzo' )
mycat.set_name( 'Tiddles' )
yourcat.set_name( 'Flossy' )
```

**SideNote**: If you have an object with a ```nil``` value, you will need to use the ```p``` method, rather than ```puts``` or ```print```, in order to see the ```nil``` value. ```nil``` is an object in Ruby.

**Recap**
A class definition is like a blueprint. It describes features of some sort of object.

In order to create an actual object of a particular type of class, you have to call the class' ```.new``` method. You should probably assign the newly created object to a variable.

```@myname``` is an example of an instance variable. All variables that begin with @ are instance variables.

It isn't necessary to pre-declare variables or their types.

Class names must begin with a Capital letter. By convention, method names should be in lowercase.