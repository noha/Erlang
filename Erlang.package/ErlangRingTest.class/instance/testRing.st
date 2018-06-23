run tests
testRing
	Transcript cr; nextPutAll: 'procs    creation/µs    msg/µs'; cr.
	self testRingOf: 200.
	self testRingOf: 500.
	self testRingOf: 1000.
	self testRingOf: 2000.
	self testRingOf: 5000.
	self testRingOf: 10000.
	self testRingOf: 20000.
	self testRingOf: 50000.
