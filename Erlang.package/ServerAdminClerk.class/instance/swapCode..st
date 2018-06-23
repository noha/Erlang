client interface
swapCode: newBehavior
	^ rpcClass request: #name_server toDo: (Message selector: #swapCode: argument: newBehavior)