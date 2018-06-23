running
testBasicPingPong
	| ping pong count |
	ping := ERPing new.
	pong := ERPong new.
	[	pong process send: {ping process. #ping}.
		(Delay forMilliseconds: 10) wait.
	] ensure: [count := ping terminate. pong terminate].
	self assert: (count > 100)
		