tests
testContractCallSetMethodInTransactionModifiesValue
	| method transactionReceipt hash futureTransactionReceipt mirror |
	mirror := simpleStorage contract mirror instanceMirror.
	method := mirror methods detect: [ :m | m selector asSymbol = #set: ].
	hash := method applyOn: simpleStorage valueWithArguments: {2} sender: self ownerAccount.
	futureTransactionReceipt := FogTransactionMonitorService current receiptFor: hash.
	transactionReceipt := futureTransactionReceipt synchronizeTimeout: 10 minutes.
	self assert: (transactionReceipt at: #transactionHash) = hash.
	self assert: (mirror property: #storedData at: simpleStorage) equals: 2.
	method := mirror methods detect: [ :m | m selector asSymbol = #get ].
	self
		assert: (method applyOn: simpleStorage valueWithArguments: {} sender: self ownerAccount)
		equals: 2