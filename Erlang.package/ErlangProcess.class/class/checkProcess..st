assertions
checkProcess: aProcesId
	self assert: (aProcesId isKindOf: ErlangProcess)