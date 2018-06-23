exported
startWithName: aName behavior: aServerClass
	| clerkClass |
	self new setName: aName behavior: aServerClass.
	clerkClass := aServerClass clerkClass.
	^ clerkClass using: self