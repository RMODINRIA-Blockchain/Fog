baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec baseline: 'FogCommunication' with: [ spec repository: 'github://sbragagnolo/Fog/src' ].
			spec baseline: 'FogSolidityAST' with: [ spec repository: 'github://sbragagnolo/Fog/src' ].
			spec baseline: 'FogAST' with: [ spec repository: 'github://sbragagnolo/Fog/src' ].
			spec baseline: 'FogDB' with: [ spec repository: 'github://sbragagnolo/Fog/src' ].
			spec baseline: 'FogBi2' with: [ spec repository: 'github://sbragagnolo/Fog/src' ].
			spec package: #Fog with: [ spec requires: #(FogCommunication FogSolidityAST FogDB FogBi2) ] ]
