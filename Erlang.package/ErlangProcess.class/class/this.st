naming
this
	| p |
	p := Processor activeProcess.
	self assert: [p isKindOf: ErlangProcess].
	^p