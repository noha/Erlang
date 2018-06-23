*erlang
send: aMessage
	"This implements the Erlang feature whereby messages can be sent not only to processes, but also
	to names that have been registered as referring to processes.
	aMessage is, by convention, a pair consisting of the Erlang process that is to receive the reply and 
	the request.
	Answers the process to which the message is sent."
	^ self resolve send: aMessage