//
//  DataViewController.swift
//  AnimalGame
//
//  Created by Kang, Siwei on 12/9/14.
//  Copyright (c) 2014 swayy. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    var dataObject: Question?


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let obj: Question = dataObject {
            self.questionLabel!.text = obj.question
            self.answerLabel!.text = obj.answer
        } else {
            self.questionLabel!.text = ""
            self.answerLabel!.text = ""
        }
    }
}

