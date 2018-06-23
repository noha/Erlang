private
serverLoop
	"Armstrong calls this loop/3"
	"Note that the Erlang request is a Smalltalk message, and an Erlang message is a pair 
	consisting of the Erlang process that is the sender, and the Erlang request."
	| erlangMessage from request errorOcurred |
	[	erlangMessage := process receive.
		from := erlangMessage first.
		request := erlangMessage second.
		self assert: (process == ErlangProcess this).
		[from send: {process. self handle: request}] 
			on: Error do: 
				[ :why | self logError: why in: request by: ErlangProcess this.
					from send: {process . #crash}
		]
	] repeat
	