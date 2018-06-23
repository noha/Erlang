*erlang
resolve
	^  (ErlangProcess whereIs: self) ifNil: [self error: 'Name ' , self , ' not registered']