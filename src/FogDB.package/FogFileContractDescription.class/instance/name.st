accessing
name
	^ fromFile basename copyFrom: 1 to: (fromFile basename indexOf: $.) - 1