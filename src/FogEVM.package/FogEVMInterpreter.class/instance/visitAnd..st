visit - boolean alebra
visitAnd: aFogVMAnd
	| a b |
	a := self hexaToBoolean: stack pop.
	b := self hexaToBoolean: stack pop.
	stack push: (self booleanToHexa: a & b)