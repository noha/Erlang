behavior callbacks
handle: aRequest
	"I handle the swapCode request myself; all others are handled by my behavior."
	(aRequest selector = #swapCode:)
		ifTrue: [self swapCode: aRequest argument. ^ #ok].
	^ super handle: aRequest