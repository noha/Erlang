behavior callbacks
handle: aRequest
	| pair |
	pair := behavior perform: (aRequest selector , #state:) asSymbol 
					 withArguments: (aRequest arguments , {state}).
	state := pair first.
	^ pair second