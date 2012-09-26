##Class Hierarchies

A class is a blueprint. It determines what is in an object and how it behaves.

You could create a "Thing" class, which has a "name" and a "description", since all things generally have these two values.

Then you could create a "Treasure" and "Room" class, that describe what those objects are all about. Since they are both "Things" you want them to both have names and descriptions too, so you make the "Treasure" and "Room" classes descend from the "Thing" class with something like

```def Treasure < Thing``` and ```def Room < Thing```

This gives the Treasure and Room objects access to the name and description methods without having to manually copy the code into the Treasure and Room classes.

Now, you probably want to assign a value to the Treasure objects, since they are valuable. You can add methods for ```value``` to the Treasure class. Likewise, with the Room class, you can add the ```exits``` methods to the Room class, since a room would have exits.

With this inheriting from other classes, you only have to add the code specific to the subclasses, like ```value``` and ```exits```.

Then, you could create further classes. Say a ```Weapon``` class that inherits from ```Treasure``` class. So, it gets a name, description, and value, but it could also have a ```destructive_power``` method. Similarly, we could have a ```Jewel``` class. It has all the same things as the ```Treasure``` class, but adds on the methods and data for ```type_of_gem```.

Let's say you want to create a particular type of room, say, a ```Vault```. A vault is secure, so it needs a ```combination_lock```. Since ```Vault``` is a room, we create it with the ```def Vault < Room```, which gives it access to name, description, and exits. We create the methods for ```combination_lock``` in the Vault class, to give it that attribute.