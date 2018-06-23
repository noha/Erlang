initialize-release
initialize
	super initialize.
	counter := 0.
	proc := [self run] forkErlang 