tests
testEthGetStorageAtBlockNumber
	self
		assertEntityFromMessage: (eth messageGetStorageAt: '0x295a70b2de5e3953354a6a8344e616ed314d7251' upTo: 0 blockNumber: 1)
		equalsToJson: '{"jsonrpc":"2.0", "method": "eth_getStorageAt", "params": ["0x295a70b2de5e3953354a6a8344e616ed314d7251", "0x0", "0x1"], "id": 1}'