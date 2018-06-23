*erlang
forkErlangAndWait
	"Create and schedule an Erlang Process and wait for it do stop"

	| p |
	p := self forkErlang.
	[  p isTerminated ] whileFalse: [ 
		(Delay forMilliseconds: 5 ) wait ]