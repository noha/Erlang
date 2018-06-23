running
run
	[	| msg partner |
		msg := proc receive.
		partner := msg first.
		ErlangProcess checkProcess: partner.
		self assert: [msg second = #ping].
		counter:= counter + 1. 
		self assert: (ErlangProcess this == proc).
		partner send: {ErlangProcess this . #pong}.
	] repeat
	 