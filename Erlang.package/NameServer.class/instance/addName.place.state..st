behavior callbacks
addName: aName place: aPlace state: dict
	| newDict |
	newDict := dict shallowCopy.
	newDict at: aName put: aPlace.
	^{newDict . aPlace}