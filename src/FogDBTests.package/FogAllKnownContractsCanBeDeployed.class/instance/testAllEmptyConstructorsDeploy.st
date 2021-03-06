tests
testAllEmptyConstructorsDeploy
	| instances detectedContracts account |
	account := self ownerAccount.
	instances := self contractDescriptions
		select: [ :d | d hasAst and: [ d mirror constructor parameters size = 0 ] ]
		thenCollect: [ :d | d mirror constructor applyOn: d valueWithArguments: {} sender: account ].
	instances do: [ :i | i waitIsReady ].
	self assert: (instances allSatisfy: #isReady).
	detectedContracts := instances
		collect: [ :i | self contractDescriptions detect: [ :c | c codeMatchesWith: i contract binary ] ].
	self assert: detectedContracts equals: (instances collect: #contract)