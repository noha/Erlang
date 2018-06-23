private
setName: aName behavior: aServerClass
	| server |
	behavior := aServerClass new.
	state := behavior init.
	process :=  [self serverLoop] newErlangProcess.
	ErlangProcess register: aName as: process.
	process resume