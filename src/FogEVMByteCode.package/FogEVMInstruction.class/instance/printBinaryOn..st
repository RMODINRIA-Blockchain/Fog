printing
printBinaryOn: aStream
	aStream nextPutAll: (self byteCode copyReplaceAll: '0x' with: '')