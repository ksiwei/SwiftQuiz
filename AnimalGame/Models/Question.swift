//
//  Question.swift
//  AnimalGame
//
//  Created by Kang, Siwei on 12/9/14.
//  Copyright (c) 2014 swayy. All rights reserved.
//

import Foundation

class Question {
    var answerIsValid = false;
    var question:String;
    var answer:String {
        didSet {
            answerIsValid = !answer.isEmpty
        }
    };
    
    init (question:String, answer:String) {
        self.question = question
        self.answer = answer
    }
    
    func answerIsCorrect(response:String) -> Bool{
        return response == answer
    }
}
