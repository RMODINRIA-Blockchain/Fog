initialization
initialize
	super initialize .
	inMethodBody := false. 
	hasEntered := false. 
	visitedStatements := Set new .
	currentStatement := FogEVMAstNode new.