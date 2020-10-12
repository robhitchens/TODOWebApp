"
This is the entry class for a simple TODO web application using the seaside framework.
"
Class {
	#name : #TODOWebApp,
	#superclass : #WAComponent,
	#category : #'TODO-webapp-src'
}

{ #category : #'class initialization' }
TODOWebApp class >> initialize [ 
	WAAdmin register: self asApplicationAt: 'todo'
]

{ #category : #testing }
TODOWebApp >> canBeRoot [ 
	^ true
]

{ #category : #rendering }
TODOWebApp >> renderContentOn: html [ 
	"TODO come back and replace bog standard html with either bootstrap4 or material-lite"
	html heading: 'TODO application'.
	html text: Date today.
]
