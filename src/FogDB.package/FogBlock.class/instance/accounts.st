accessing
accounts
	^ ((self transactions collect: #from) , (self transactions collect: #to) , {FogNoAccount nilAccount}) asSet