behavior callbacks
whereIs: aName state: dict
	| answer |
	answer := dict at: aName.
	^ {dict . answer}