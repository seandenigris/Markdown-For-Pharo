menus
rubMenuFor: aBuilder
	| selection selectedText selectedString |
	aBuilder model ifNil: [ ^ self ].
	aBuilder model model ifNil: [ ^ self ].
	(selection := aBuilder model selectionInterval) isEmptyOrNil ifTrue: [ ^ self ].
	(selectedText := aBuilder model gtGetText copyFrom: selection first to: selection last) isEmptyOrNil ifTrue: [ ^ self ].
	(selectedString := selectedText asString) isEmptyOrNil ifTrue: [ ^ self ].
	
	(aBuilder item: 'GT Examples')
		withSeparatorAfter;
		with: [ 
			" this is yet too complicated - SIMPLIFY term and behavior for the user
			
			(lastItem := aBuilder item: #'Browse examples with subject ""' , selectedString , '""')
				action: [ GTExampleNavigation browseExamplesWithSubjectMatching: selectedString ].
			"
			(aBuilder item: #'Browse examples with literal "' , selectedString, '"')
				action: [ GTExampleNavigation browseExamplesLiteralThorough: selectedString ]. ]