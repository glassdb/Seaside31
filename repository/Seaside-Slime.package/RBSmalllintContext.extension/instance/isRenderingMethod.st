*seaside-slime
isRenderingMethod
	(self selector numArgs > 0 and: [ self selector beginsWith: #render ])
		ifFalse: [ ^ false ].
	^ self compiledMethod literals anySatisfy: [ :each | each isSymbol and: [ WASlime isBrushSelector: each ] ]