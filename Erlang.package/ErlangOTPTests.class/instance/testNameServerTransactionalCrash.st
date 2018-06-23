running
testNameServerTransactionalCrash
	| result clerk |
	[ 	clerk := TransactionServer startWithName: #name_server behavior: NameServer.
		[ clerk addName: #joe place: 'at home' ] forkErlangAndWait.
		[ self should: [result := (clerk whereIs: #fred)] 
			raise: Error 
			whoseDescriptionIncludes: 'rpc' 
			description: 'remote operation did not raise expected error'  ] forkErlangAndWait
	]  ensure: [ #name_server terminate ]