a1 = [1,2,3]
a2 = ["a", "b", "c"]
a3 = a1 << a2
a4 = a3.flatten.reverse
a4[1] = "XXX"
a4.delete_at(1)

p( a1 )
p( a2 )
p( a3 )
p( a4 )
puts a4.length