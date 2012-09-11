Strings and Embedded Evaluation
===

**puts 'hello world'**

* puts is a simple ruby function or method that displays a string.
* The string to be displayed is between the single quotes.

**Program: helloname.rb**

```
print('Enter your name: ')
name = gets()
puts( "Hello #{name}" )
```

**The line-by-line for helloname.rb**

```print('Enter your name: ')```

* Prints out ```'Enter your name: '```. No linefeed to start a new line.

```name = gets()```

* Awaits user input using ```gets()```.
* Whatever the person enters will be saved as a string to the variable ```name```