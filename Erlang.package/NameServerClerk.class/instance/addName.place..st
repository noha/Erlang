client interface
addName: aName place: aPlace
	^ rpcClass request: #name_server toDo: (Message selector: #addName:place: arguments: {aName . aPlace})