running
run
	[	| msg |
		msg := proc receive.
		ErlangProcess checkProcess: next.
		next send: msg.
	] repeat
	 