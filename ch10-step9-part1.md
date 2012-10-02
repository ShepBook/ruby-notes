##Modules and Mixins

Modules are used to "wrap up" code for reuse.

Modules can be "mixed in" to classes, which can be used to get around the single inheritance issue of classes.

A module is very much like a class. It can contain instance methods. While it contains things and looks like a class, you can't create an instance of a module.

You create an object of a particular class type, then you include modules or "mix them in". To do so, you just do:

```
include module-name-here
```

Inside of a class, outside the methods in that class.

**Keeping modules in their own files**

Kinda like libraries, you can separate out the modules into different files.

Say you have ```somemodules.rb``` which contains ```module SomeModule```.

At the start of the file you would like to include the module containing file using ```require``` like

```
require( "./somemodules.rb" )
```

That lets you call module methods with

```
SomeModule.method
```

Module methods are methods defined by ```def SomeModuleName.methodname```.

For instance methods in modules, you need to include them, like ```include SomeModule```. This is just like you'd do if you were including it in a class.