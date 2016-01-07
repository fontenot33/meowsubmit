//
//  ViewController.swift
//  MEOW
//
//  Created by Ariana Fontenot on 1/7/16.
//  Copyright © 2016 Fontebot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    let questionsStruct = Questions()
    let colorStruct = ColorWheel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeText()
        self.view.backgroundColor = colorStruct.randomColor()
        
        let touch = UITapGestureRecognizer(target:self, action:"tapView:")
        self.view.addGestureRecognizer(touch)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tapView(sender: UIButton) {
        changeColor(sender)
        changeText()
    }

    func changeText() {
        textLabel.numberOfLines = 0
        textLabel.text = questionsStruct.questions()
    }
    
    func changeColor(sender: UIButton) {
        self.view.backgroundColor = colorStruct.randomColor()
    }
}

