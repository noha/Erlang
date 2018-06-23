NameServer is what Armsstrong calls the "Behavior" that is plugged into a server framework to make a functioning server.

Methods:
	initialize
	addName: <aKey> place: <Object> -> <Object>
	whereIs: <aKey> -> <Object>

Instance Variables:
	dict	<Dictionary>: The mapping from names to objects that this nameserver implements.