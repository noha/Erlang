exported
request: aServerOrName toDo: aRequest
	"This is Armstrong's rpc/2."
	
	| sender destination response |
	sender := ErlangProcess this.
	destination := aServerOrName send: {sender . aRequest}.
	response :=  sender receive.
	self assert: (response first == destination).
	^ response allButFirst 