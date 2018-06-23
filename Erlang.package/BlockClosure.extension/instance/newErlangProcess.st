*erlang
newErlangProcess
	"Answer a Process running the code in the receiver. The process is not 
	scheduled."
	<primitive: 19> "Simulation guard"
	^ErlangProcess
		forContext: 
			[self value.
			Processor terminateActive] asContext
		priority: Processor activePriority