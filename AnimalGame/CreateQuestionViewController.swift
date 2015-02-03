//
//  CreateQuestionViewController.swift
//  AnimalGame
//
//  Created by Kang, Siwei on 12/9/14.
//  Copyright (c) 2014 swayy. All rights reserved.
//

import UIKit

class CreateQuestionViewController: UIViewController {

    @IBOutlet weak var questionField: UITextField!
    @IBOutlet weak var AnswerField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dimissQuestionForm(sender: AnyObject) {
        if ((self.presentationController) != nil) {
            self.dismissViewControllerAnimated(true
                , completion: nil);
        }
    }
    
    @IBAction func saveQuestions(sender: AnyObject) {
        List.sharedInstance.addQuestion(questionField.text, answer: AnswerField.text);
    }

}