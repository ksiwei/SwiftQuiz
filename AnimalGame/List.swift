//
//  Questions.swift
//  AnimalGame
//
//  Created by Kang, Siwei on 12/9/14.
//  Copyright (c) 2014 swayy. All rights reserved.
//

import Foundation

let _SingletonSharedInstance = List()

class List {
    class var sharedInstance : List {
        return _SingletonSharedInstance
    }
    
    var questions: Array<AnyObject> = []

    func addQuestion(question:String, answer:String) {
        var myQ : Question = Question(question:question, answer:answer);
        questions.append(myQ);
    }

}