##Constants and Variables

Local variables start with lower case letters. After the first character, it can be any mix of upper and lower case letters.

Global variables start with a ```$```. They can contain a mix of upper and lower case variables.

Constants start in upper case and many people prefer to use ALLUPPERCASE for their constants names, so that it's extra clear.

**Local vs Global Scope**

The local variable exists in the scope you create it in. If created outside of an object instance, it defaults to the "main" object.

A local variable defined within an instance method is accessible from within that instance method and only that instance method.

A global variable doesn't change, regardless of where in the program it is called. So, if called in the main scope, it will return the same value as if called inside of an instance method.

**Constants**

Constants should, as their name suggests, stay the same. In Ruby, it is possible to change constants, though that isn't recommended.

If you change a constant's value, Ruby will complain.

To access a constant from an included file, you can do so like:

```
Math::PI
```

or from another module that you've defined or included.

Simply put… Don't modify constants!s