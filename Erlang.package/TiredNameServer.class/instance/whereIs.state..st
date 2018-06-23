behavior callbacks
whereIs: aName state: dict
	| answer |
	answer := (dict at: aName) , ', asleep'.
	^ {dict . answer}