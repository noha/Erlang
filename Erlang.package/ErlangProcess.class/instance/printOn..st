printing
printOn: aStream
	"Append a sequence of characters to aStream that identify the receiver."

	| title |
	title := self class name.
	aStream
		nextPutAll: (title first isVowel ifTrue: ['an '] ifFalse: ['a ']);
		nextPutAll: title.
	aStream nextPutAll: self identityHashPrintString.
	"aStream
		nextPutAll: ' mailbox: ';
		print: mailbox
"