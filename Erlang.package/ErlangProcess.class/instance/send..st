messaging
send: aMessage
	"send aMessage to me.  Answers me, the process to which the message is sent."
	mailbox nextPut: aMessage.
	^ self