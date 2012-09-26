##Initializing and Inspecting Objects

**Initializing**

A new object is created by calling the ```.new``` method on the class name and assigning it a name, like:

```
coin = Treasure.new
``` 

The ```.new``` method is the object's "constructor". It does all the work of bringing an object into existance.

When you create an object, you probably want to assign some values to it's internal data, it's instance variables. You can create a method called "initialize" if you'd like to have certain values set when the object is created, like this:

```
class Treasure
  def initialize( aName, aDescription )
    @name        = aName
    @description = aDescription
  end
end
```

You don't strictly need an initialize function, however, if it exists, Ruby will automatically run it after it creates the new object.

**Inspecting**

Ruby has a special "inspect" method.

The ```.inspect``` method being tacked on to an object will output all the values stored in that object. For example:

**Let's say you initialize a Treasure object using the code we wrote above.**

```
treasure1 = Treasure.new("Sword", "an Elvish weapon forged of gold")
```

**Now, let's inspect it.**

```
puts "Inspecting the first treasure: #{treasure1.inspect}"
```

We run it and it outputs something like:

```
=> Inspecting the first treasure: #<Treasure:0x21cb100 @name="Sword", @description="an Elvish weapon forged of gold">
```

".inspect" looks inside the object and displays the data it contains.

**Overriding default methods**
You can do something like override the "to_s" method by creating your own custom method of the same name.

One must be careful when overrideing built in methods, particularly with debugging tools that expect built in methods to work a certain way.

**Using p to inspect**

You can use the ```p``` method to output the inspected data instead of using the inspect method itself.

```p``` will output standard string or number data if that is what the variable contains, however, if it is done on an object, it will output the data it inspects. Chaning the ```to_s``` method will change the output of ```p```.