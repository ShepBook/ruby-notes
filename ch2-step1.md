Strings and Embedded Evaluation
---

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

* Prints out ```Enter your name: ```. No linefeed to start a new line.

```name = gets()```

* Awaits user input using ```gets()```.
* Whatever the person enters will be saved as a string to the variable ```name```
* Program continues after user hits ```return``` to enter his name.

```puts( "Hello #{name}" )```

* Prints out ```Hello Jared``` if the person entered "Jared" for his name.
* The #{} calls the variable called ```name```
* We stored the user's name in the name variable, in the previous line.
* It is important to use Double Quotes, like ```""```, as this means that anything inside will be evaluated.
* If single quotes were used, it would display the literal string, including the ```#{name}``` part, which we don't want.