as yet unclassified
menuFor: aPlayground
	^ {
		" this is yet too complicated - SIMPLIFY term and behavior for the user 
		
		(GLMGenericAction new) 
			title: 'Browse examples with subject ...';
			action: [ :aPresentation | GTExampleNavigation browseExamplesWithSubjectMatching:  aPresentation selectedText asString ]; 
			category: 'GT Examples';
			yourself.
		"
		(GLMGenericAction new) 
			title: 'Copy as Smalltalk code';
			action: [ :aPresentation | 
				| md |
				md := Markdown new smalltalkCode: aPresentation selectedText asString.
				Clipboard clipboardText: md ]; 
			category: 'Markdown';
			yourself.
	}