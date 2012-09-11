**Math operators**

* Standard math operators just work.
* These include + * - /

**Strings**

* Strings are any text within quotes "like this".

**Methods**

* There are many "common sense" methods build into things.
* For example, "string".reverse will output ""gnirts".
* "string".length will count the letters and return 6.
* Methods are simply actions done to objects in Ruby.

**Multiplying a string**

* "string" * 5 will return "stringstringstringstringstring".

**40.reverse**

* 40.reverse returns an error about an undefined method.
* 40 is an integer and doesn't have that method built in.
* If we convert it to a string, it will work.

**Convert to a string**

* to_s is used to convert something to a string.
* For example: 40.to_s will return "40".
* You could then do a reverse function on the string.
* For example: 40.to_s.reverse will return "04".

**All the converts**

* **to_s** converts things to **strings**.
* **to_i** converts things to **integers** (aka numbers).
* **to_a** converts things to **arrays**.

**WTF is an array?**

* Arrays are enclosed by square brackets like []
* They are like a list that keeps things in order.
* For example: [12, 47, 35].
* You can find the highest value of an array with .max
* For example: [12, 47, 35].max will return 47.
* Save something like an array into a variable with "="
* For example: ticket = [12, 47, 35]

**Variables**

* A variable can be created to store many things.
* In the previous example, a variable was created called "ticket" and the numbers for a lottery ticket were stored in them.
* You can use the .sort method to put them in numerical order.
* For example: ticket.sort!
  * This will sort them and then overwrite the variable with the new array in the new order.
  * The ! is what makes the variable change.
  