tests
testEthGetBlockByTag
	self
		assertEntityFromMessage: (eth messageGetBlockByTag: 'latest' full: true)
		equalsToJson: '{"jsonrpc":"2.0","method":"eth_getBlockByNumber","params":["latest", true],"id":1}'