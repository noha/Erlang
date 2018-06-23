running
testNameServerSwap
	| firstResult secondResult clerk swapResult |
	[ 	clerk := HotSwapServer startWithName: #name_server behavior: NameServer.
		[ 	clerk addName: #joe place: 'at home' ] forkErlangAndWait.
		[ 	firstResult := clerk whereIs: #joe.
		  	swapResult := (ServerAdminClerk using: HotSwapServer) swapCode: TiredNameServer.
		  	secondResult := clerk whereIs: #joe 
		] forkErlangAndWait.
		self assert: (firstResult = #('at home')).
		self assert: (swapResult = #(ok)).
		self assert: (secondResult = #('at home, asleep'))
	]  ensure: [ #name_server terminate ]