Objects and Methods
---

**Method**

* In object oriented languages, a "method" is like a function or subroutine in other languages.
* Methods can be run on objects by appending a . and the method name for the object.

**Objects**

* Most things in Ruby are objects.
* Methods do things to objects.
* You can think of it as a wrapper around some kind of data, like a string or number.
* An object may also "wrap up" a method or function that can be used on other objects.
* An example is ```puts "hello world".reverse```
  * This bit of code prints out ```hello world``` and the ```.reverse``` is a method that reverses the order of the letters in the string.
  * Strings have the ```reverse``` method. This wouldn't work on an integer, as they do not have the ```reverse``` method for that kind of object.
* An object inherits any methods that apply to the object type it is.

**Some object line-by-line**

```puts( "hello world" )```

* We are familiar with this line. It prints out the data in the string.
* The thing to remember is that the string isn't just a set of characters. It is a "string object".

**Writing your own custom objects and methods.**

**class**

* A class is kinda like a definition for an object.
* A class must be setup in order to create an object of that type. It is what defines it, after all.
* A method for a class is contained with in ```def``` and ```end```, like so:

```
class MyClass
  def saysomething
    puts( "Hello" )
  end
end
```

**Line-by-line breakdown**

**class MyClass**

* Starts us off by defining a new class, called ```MyClass```

**def saysomething**

* Start of a method, named ```saysomething```

**puts( "Hello" )**

* The "body" of the method, if you will. It's what action the method does.

**end**

* Marks the end of the ```def``` for the method ```saysomething```

**end**

* This second end marks the end of the ```class MyClass```

**Creating a new object with our new class**

In order to use our new method ```saysomething```, we need to create an object of the ```MyClass``` type. We can do that like:

```
ob = MyClass.new
```

**Line-by-line breakdown 

* ```ob``` is the new object we are creating with the ```=``` sign.
* Then, we call the ```MyClass.new``` part.
  * ```MyClass``` is the name of the class we just defined.
  * ```.new``` says that ```ob``` is a "new object" of the ```MyClass``` type.

Once we create the object with ```ob = MyClass.new``` we can tell ```ob``` to do the ```saysomething``` method, like so.

```
ob.saysomething
```

**Method Syntax**

* Must begin with ```def``` and ends with ```end```.
* Can take an argument, after the method name and contained in parenthesis, like ```def showstring( some_argument )```.
* There can be multiple arguments, like ```def showthing( thing1, thing2 )```. Just separate the arguments by commas.
* Parenthesis are optional, but they make reading the program easier. They can also prevent ambiguity.
* The ```return``` part is evaluated and is what the method returns or outputs when it is called.
* If there is no ```return``` keyword, the last expression that was evaluated in the method is returned.
* All methods are a part of the ```main``` class, even if not specified explicitly. This is true, even if the methods are not explicitly part of another class.

**stopped at 4:30**