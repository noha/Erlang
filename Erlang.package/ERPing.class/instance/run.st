running
run
	| msg partner |
	[	msg := proc receive.
		partner := msg first.
		ErlangProcess checkProcess: partner.
		self assert: [msg second = #pong].
		counter := counter + 1.
		partner send: {ErlangProcess this . #ping}.
	] repeat
	 