visit - arithmetics
visitAdd: aFogVMAdd
	| a b |
	a := stack pop asBKNumber.
	b := stack pop asBKNumber.
	stack push: (a + b) asBKHexa