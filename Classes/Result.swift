//
//  Result.swift
//  Words
//
//  Created by Sam Soffes on 6/13/14.
//  Copyright (c) 2014 Nothing Magical Inc. All rights reserved.
//

struct Result {
	var word: String
	var synonyms: String[]
	
	init(word: String, synonyms: String[]) {
		self.word = word
		self.synonyms = synonyms
	}
	
	init(line: String) {
		var words = line.componentsSeparatedByString(",")
		self.word = words.removeAtIndex(0)
		self.synonyms = words
	}
}
