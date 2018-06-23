running
testNameServerBasic
	| result clerk |
	[ 	clerk := BasicServer startWithName: #name_server behavior: NameServer.
		[ clerk addName: #joe place: 'at home' ] forkErlangAndWait.
		[ result := (clerk whereIs: #joe)] forkErlangAndWait.
		self assert: (result = #('at home')) 
	]  ensure: [ #name_server terminate ]