running
sendMessageAround
	| msg |
	next send:  #hi.
	msg := proc receive.
	self assert: (msg = #hi).
	counter := counter + 1