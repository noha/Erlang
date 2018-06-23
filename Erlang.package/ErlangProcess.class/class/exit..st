exceptions
exit: aReason
	"Simulate Erlang's exit BIF"
	self error: 'Erlang exit ', aReason asString.
	ErlangProcess this terminate