ErlangProcess is a kind of Process that is able to send and receive ErlangMessages.

Instance Variables:
	mailbox	<SharedQueue of ErlangMessages>
		
The class side also contains some utility messages that are available in Erlang as BIFs:

	register: aName as: aProcess
	unregister: aName
	whereis: aName