##Superclasses and Subclasses

You can create a class that inherits methods from another class. It goes something like this:

```
class Treasure < Thing
end
```
This says that the Treasure class contains all the methods that the Thing class does, as well as any methods you create specifically for the Treasure class.

Some code to look over:

```
class Thing
  def initialize( aName, aDescription )
    @name        = aName
    @description = aDescription
  end
  
  def get_name
    return @name
  end
  
  def set_name( aName )
    @name = aName
  end
  
  def get_description
    return @description
  end
  
  def set_description( aDescription )
    @description = aDescription
  end
end

class Treasure < Thing  #Treasure decends from Thing
  def initialize( aName, aDescription, aValue )
    super( aName, aDescription )
    @value = aValue
  end
  
  def get_value
    return @value
  end
  
  def set_value( aValue )
    @value = aValue
  end
end
```
**Chunky breakdown**

```class Thing``` creates a class called "Thing".

The ```def initialize( aName, aDescription )``` part asks for a name and description and then sets the instance variables to those values.

```def get_name``` simply returns the value stored in ```@name``` and ```def set_name( aName )``` sets a new ```@name``` instance variable to whatever argument value is passed in. Likewise, ```def get_description``` and ```set_description``` do the same thing with the ```@description``` instance variable.

Next, we see ```class Treasure < Thing```. This creates the "Treasure" class and tells Ruby that the Treasure class descends from the Thing class. That is, it gets access to all the methods contained within the Thing class too.

```def initialize( aName, aDescription, aValue )``` is the method for initializing the new object. The ```super( aName, aDescription )``` line passes the arguments that come from the initialization to the initialize method for the Thing class. (The Thing class is the "Superclass"  of the Treasure class.) Finally, the ```@value = aValue``` sets the instance variable for the @value to the aValue argument that was passed in.

```def get_value``` and ```def set_value( aValue )``` do the same thing as the previous methods we looked at, in that they return the data stored in @value or change the data stored in @value.

**Super Keyword**

When the ```super``` keyword is used inside of a method, the arguments passed in after the super keyword are passed to the ancestor class and the method of the same name is run with those arguments. That is what happened in the code above.