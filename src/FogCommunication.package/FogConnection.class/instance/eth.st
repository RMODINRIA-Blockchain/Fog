accessing
eth
	^ eth
		ifNil: [ eth := FogEth new
				connection: self;
				yourself ]