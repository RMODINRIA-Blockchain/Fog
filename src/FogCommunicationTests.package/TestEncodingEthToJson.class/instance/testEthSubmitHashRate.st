tests
testEthSubmitHashRate
	self
		assertEntityFromMessage:
			(eth
				messageSubmitHashrate: '0x0000000000000000000000000000000000000000000000000000000000500000'
				clientId: '0x59daa26581d0acd1fce254fb7e85952f4c09d0915afd33d3886cd914bc7d283c')
		equalsToJson:
			'{"jsonrpc":"2.0","method":"eth_submitHashrate","params":[  "0x0000000000000000000000000000000000000000000000000000000000500000",
  "0x59daa26581d0acd1fce254fb7e85952f4c09d0915afd33d3886cd914bc7d283c"],"id":1}'