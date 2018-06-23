client interface
whereIs: aName
	 ^ rpcClass 
				request: #name_server 
				toDo:  (Message selector: #whereIs: argument: aName)