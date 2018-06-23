exported
request: aServerOrName toDo: aRequest
	"This is Armstrong's rpc/2."
	
	| sender destination response wholeResponse |
	sender := ErlangProcess this.
	destination := aServerOrName send: {sender . aRequest}.
	wholeResponse :=  sender receive.
	self assert: (wholeResponse first == destination).
	response := wholeResponse allButFirst.
	response = #(crash) ifTrue: [ErlangProcess exit: #rpc].
	^ response