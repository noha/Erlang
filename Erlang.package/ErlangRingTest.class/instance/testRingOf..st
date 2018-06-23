run tests
testRingOf: n
	| leader prev p p3 t |
	leader := prev := ERringLeader new.
	Smalltalk garbageCollect.
	t := Time millisecondsToRun: [ 
			n - 1 timesRepeat: [ 
					p := ERringElement new.
					prev next: p process.
					prev := p ].
			prev next: leader process ].
	Transcript
		show: n;
		nextPut: Character tab;
		show: (t asFloat * 1000 / n);
		"nextPutAll: ' µs / process';"
		nextPut: Character tab;
		flush.
	self assert: leader count = 0.
	t := Time millisecondsToRun: [ leader sendMessages: 10 ].
	self assert: leader count = 10.
	Transcript
		show: (t asFloat * 100 / n);
		"nextPutAll: ' µs / message';"
		cr;
		flush