private
swapCode: aNewBehavior
	"This implements code swapping.  It corresponds to one of the cases in Armstrong's loop'"
	behavior := aNewBehavior new.
	^ {state . #ok}