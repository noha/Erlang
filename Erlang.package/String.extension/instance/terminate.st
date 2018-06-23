*erlang
terminate
	"This implements the Erlang feature whereby messages can be sent not only to processes, but also
	to names that have been registered as referring to processes."
	| targetProcess |
	targetProcess := (ErlangProcess whereIs: self) ifNil: [^ nil].
	ErlangProcess unregister: self.
	^ targetProcess terminate 